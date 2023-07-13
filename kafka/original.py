from kafka import KafkaConsumer
from json import loads
from kafka import TopicPartition
import json
import pandas as pd
from neo4j import GraphDatabase
import logging
from neo4j.exceptions import ServiceUnavailable
import numpy as np
# from py2neo import Graph
from neo4j import GraphDatabase
from pandasql import sqldf
from pathlib import Path

# class Neo4jConnection:
    
#     def __init__(self, uri, user, pwd):
#         self.__uri = uri
#         self.__user = user
#         self.__pwd = pwd
#         self.__driver = None
#         try:
#             self.__driver = GraphDatabase.driver(self.__uri, auth=(self.__user, self.__pwd))
#         except Exception as e:
#             print("Failed to create the driver:", e)
        
#     def close(self):
#         if self.__driver is not None:
#             self.__driver.close()
        
#     def query(self, query, db=None):
#         assert self.__driver is not None, "Driver not initialized!"
#         session = None
#         response = None
#         try: 
#             session = self.__driver.session(database=db) if db is not None else self.__driver.session() 
#             response = list(session.run(query))
#         except Exception as e:
#             print("Query failed:", e)
#         finally: 
#             if session is not None:
#                 session.close()
#         return response


if __name__=='__main__':
    consumer = KafkaConsumer(bootstrap_servers=['localhost:9092'],auto_offset_reset='earliest')
    consumer.assign([TopicPartition('orders', 0)])
    print("starting the consumer")
    # dataframe = pd.DataFrame(columns=['Movie_Name','Release Period','Whether Remake','Whether Franchise','Genre','New Actor','New Director','New Music Director','Lead Star','Director','Music Director','Number of Screens','Budget(INR)','Revenue(INR)']) # Note that there are now row data inserted.

    dataframe = pd.DataFrame(columns=['movie_name','release_period','whether_remake','whether_franchise','genre','new_actor','new_director','new_music_director','lead_star','director','music_director','number_of_screens','budgetinr','revenueinr','_ab_cdc_deleted_at']) # Note that there are now row data inserted.

    driver=GraphDatabase.driver("neo4j://neo4j:7687", auth=("neo4j", "test"))
    session = driver.session()
    i = 0
    # print(dataframe)
    for msg in consumer:
        df2 = pd.read_json(msg.value.decode('utf-8'), orient ='index')

        
        df = df2.iloc[1:2]
        df['index'] = i
        df = df.set_index('index')

        dataframe = pd.concat([dataframe, df])
        dataframe['_ab_cdc_deleted_at'] = dataframe['_ab_cdc_deleted_at'].replace(0, np.NaN)    # For coming file Data
        print(dataframe)
        dataframe = dataframe.drop_duplicates(subset=['movie_name'], keep='last')
        dataframe = dataframe[dataframe._ab_cdc_deleted_at.isnull()]

        dataframe.to_csv("/home/data.csv",encoding='utf-8')

        df = pd.read_csv("/home/data.csv")

        movie = "name,release_period,remake,franchise,genre,screens,revenue,budget\n"

        director_movie = "director,movie,new_director\n"
        actor_movie = "actor,movie,new_actor\n"

        for index, row in df.iterrows():
            actor = row["lead_star"]
            director = row["director"]
            print("=======>========>========>=======>")
            
            movie_name = row["movie_name"].replace(",", ".")

            new_actor = row["new_actor"]
            new_director = row["new_director"]
            
            director_movie += "{},{},{}\n".format(director,movie_name,new_director)

            actor_movie += "{},{},{}\n".format(actor,movie_name,new_actor)

            movie += "{},{},{},{},{},{},{},{}\n".format(movie_name,row['release_period'],row['whether_remake'],row['whether_franchise'],row['genre'],row['number_of_screens'],row['revenueinr'],row['budgetinr'])


        print("movie -------", movie)
        print("type of movie: ",type(movie))
        print("actor_movie -------", actor_movie)
        print("type of actor_movie: ",type(actor_movie))
        print("director_movie -------", director_movie)
        print("type of director_movie: ",type(director_movie))

        output_file = open("/home/movie.csv", 'w')
        output_file.write(movie)
        output_file.close()

        output_file2 = open("/home/director_movie.csv", 'w')
        output_file2.write(director_movie)
        output_file2.close()

        output_file3 = open("/home/actor_movie.csv", 'w')
        output_file3.write(actor_movie)
        output_file3.close()

        movie_df = pd.read_csv("/home/movie.csv")
        director_df = pd.read_csv("/home/director_movie.csv")
        actor_df = pd.read_csv("/home/actor_movie.csv")

        print(movie_df)
        print(director_df)
        print(actor_df)
        
        session.run("MATCH (n) DETACH DELETE n;")
        session.run("MATCH (n) DETACH DELETE n;")



        #Movie
        for index, row in movie_df.iterrows():
            session.run('''
                MERGE (m:movie {name: $name, release_period: $release_period, remake: $remake, franchise: $franchise, genre:$genre, screens: toInteger($screens), revenue: toInteger($revenue), budget:toInteger($budget)});''', parameters = {'name': row['name'], 'release_period': row['release_period'], 'remake': row['remake'], 'franchise': row['franchise'], 'genre': row['genre'],'screens': row['screens'],'revenue': row['revenue'],'budget': row['budget']})

        try:
            session.run("CREATE CONSTRAINT FOR (m:movie) Require m.name IS UNIQUE;")
        except Exception as e:
            print(e)



    
        #Director
        for index, row in director_df.iterrows():
            session.run('''
                MERGE (d:director {name: $director}) MERGE (m:movie {name: $movie}) MERGE (d)-[r:direct {new_director: $new_director}]->(m);''', parameters = {'director': row['director'], 'movie': row['movie'], 'new_director': row['new_director']})

        try:
            session.run("CREATE CONSTRAINT FOR (d:director) Require d.name IS UNIQUE;")
        except Exception as e:
            print(e) 



        #Actor
        for index, row in actor_df.iterrows():
            session.run('''
                MERGE (a:actor {name: $actor}) MERGE (m:movie {name: $movie}) MERGE (a)-[r:act_in {new_actor: $new_actor}]->(m);''', parameters = {'actor': row['actor'], 'movie': row['movie'], 'new_actor': row['new_actor']})

        try:
            session.run("CREATE CONSTRAINT FOR (a:actor) Require a.name IS UNIQUE;")
        except Exception as e:
            print(e)


        i+=1
