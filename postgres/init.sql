create schema ecommernce;

-- create table ecommernce.orders (
-- 	id int primary key,
--     store_id int not null,
--     order_date varchar(255) not null,
--     channel varchar(25),
--     country varchar(25),
--     total float not null,
--     status varchar(25)
-- );

-- create table ecommernce.orders (
-- 	_id int primary key,
-- 	first_name VARCHAR(50),
-- 	last_name VARCHAR(50),
-- 	gender VARCHAR(50),
-- 	city VARCHAR(50),
-- 	email VARCHAR(50)
-- );

CREATE TABLE ecommernce.mytable(
   movie_name         VARCHAR(50) NOT NULL PRIMARY KEY
  ,release_period     VARCHAR(50) NOT NULL
  ,whether_remake     VARCHAR(10) NOT NULL
  ,whether_franchise  VARCHAR(10) NOT NULL
  ,genre              VARCHAR(50) NOT NULL
  ,new_actor          VARCHAR(10) NOT NULL
  ,new_director       VARCHAR(10) NOT NULL
  ,new_music_director VARCHAR(10) NOT NULL
  ,lead_star          VARCHAR(30) NOT NULL
  ,director           VARCHAR(30) NOT NULL
  ,music_director     VARCHAR(30) NOT NULL
  ,number_of_screens  INTEGER  NOT NULL
  ,budgetinr          INTEGER  NOT NULL
  ,revenueinr         INTEGER  NOT NULL
);

INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Jhoom Barabar Jhoom','Normal','No','No','rom__com','No','No','No','Abhishek Bachchan','Shaad Ali','Shankar - Ehsaan - Loy',950,270000000,485250000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Dostana','Normal','No','No','rom__com','No','Yes','No','Abhishek Bachchan','Tarun Mansukhani','Vishal - Shekhar',1000,400000000,871517500);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('All Is Well','Normal','No','No','drama','No','No','No','Abhishek Bachchan','Umesh Shukla','Himesh Reshammiya',1650,340000000,230320000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Apne Ghayal Indian','Normal','No','No','drama','Yes','Yes','Yes','Abhishek Gupta','Rajesh Dubey','Suresh Kumar',1,1000000,140000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Naya Pata','Holiday','No','No','drama','No','Yes','Yes','Abhishek Sharma','Pawan K. Shrivastava','Rupesh Pathak',8,1000000,16000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('A Journey Of Samyak Buddha','Normal','No','No','drama','Yes','Yes','Yes','Abhishek Urade','Pravin Damle','Pravin Damle',8,2000000,350000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Hum Hai Raahi Car Ke','Holiday','No','No','rom__com','No','No','No','Adah Sharma','Jyotin Goel','Sangeet - Siddharth',300,50000000,8200000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Strings - Bound By Faith','Normal','No','No','drama','Yes','No','Yes','Adam Bedi','Sanjay Jha','Zubeen Garg',6,9000000,72500);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Contract','Normal','No','No','thriller','Yes','No','No','Adhvik Mahajan','Ram Gopal Verma','Amar Mohile',350,75000000,36400000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Haal - E - Dil','Normal','No','No','love_story','Yes','No','No','Adhyayan Suman','Anil Devgan','Vishal Bhardwaj',225,60000000,7200000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Dehraadun Diary','Normal','No','No','thriller','No','No','No','Adhyayan Suman','Milind Ukey','Hanif Sheikh',175,42500000,3400000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Jashnn','Normal','No','No','drama','No','No','No','Adhyayan Suman','Raksha Mistry','Sandesh Shandilya',550,72500000,38900000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Heartless','Normal','No','No','thriller','No','Yes','No','Adhyayan Suman','Shekhar Suman','Gaurav Dagaonkar',400,110000000,11800000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Zed Plus','Normal','No','No','drama','No','No','No','Adil Hussain','Chandraprakash Dwivedi','Sukhwinder Singh',350,55000000,7700000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('For Real','Normal','No','No','drama','Yes','Yes','No','Adil Hussain','Sona Jain','Zakir Hussain',30,10000000,1125000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Lessons In Forgetting','Holiday','No','No','drama','No','Yes','No','Adil Hussain','Unni Vijayan','Ganesh Kumaresh',2,60000000,60000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Poorna','Normal','No','No','drama','Yes','No','No','Aditi Inamdar','Rahul Bose','Salim - Sulaiman',300,37500000,37100000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Khanna & Iyer','Holiday','No','No','comedy','Yes','Yes','No','Aditi Sharma','Hemant Hegde','Tabun Sutradhar',70,22500000,1975000);
INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Shaapit','Normal','No','No','horror','Yes','No','Yes','Aditya Narayan','Vikram Bhatt','Nazam Sheraz',750,90000000,104300000);
-- INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Bandook','Holiday','No','No','drama','No','No','Yes','Aditya Om','Aditya Om','Nikhil Kamath',250,45000000,2100000);
-- INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Fitoor','Holiday','No','No','drama','No','No','No','Aditya Roy Kapoor','Abhishek Kapoor','Amit Trivedi',1500,710000000,397825000);
-- INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Daawat E Ishq','Normal','No','No','love_story','No','No','No','Aditya Roy Kapoor','Habib Faisal','Sajid - Wajid',1900,320000000,341300000);
-- INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Aashiqui 2','Normal','Yes','No','love_story','No','No','No','Aditya Roy Kapoor','Mohit Suri','Mithoon',1150,150000000,1093800000);
-- INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Ok Jaanu','Holiday','Yes','No','drama','No','No','No','Aditya Roy Kapoor','Shaad Ali','A.R. Rehman',1400,270000000,375020000);
-- INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Yeh Jo Mohabbat Hai','Normal','No','No','love_story','Yes','Yes','No','Aditya Samanta','Shree Narayan Singh','Anu Malik',125,80000000,2934688);
-- INSERT INTO ecommernce.mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Dil Se Poochh... Kidhar Jaana Hai','Normal','No','No','drama','No','Yes','No','Aditya Shrivastava','Shrirang Dhhavale','Aadesh Shrivastava',10,15000000,210000);



-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (1, 'Lynea', 'Hritzko', 'Female', 'Umeå', 'lhritzko0@comcast.net');
-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (2, 'Winny', 'Gallier', 'Female', 'Anan', 'wgallier1@homestead.com');
-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (3, 'Sigvard', 'Ivanov', 'Male', 'Baiyinnuole', 'sivanov2@fc2.com');
-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (4, 'Clemmie', 'Clyne', 'Male', 'Xincheng', 'cclyne3@discovery.com');
-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (5, 'Jeromy', 'Murty', 'Male', 'Firovo', 'jmurty4@comsenz.com');
-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (6, 'Charline', 'Vayro', 'Female', 'Thessalon', 'cvayro5@is.gd');
-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (7, 'Tomasine', 'McCafferty', 'Female', 'Miyata', 'tmccafferty6@vinaora.com');
-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (8, 'Aleta', 'Widdecombe', 'Female', 'Narpes', 'awiddecombe7@slate.com');
-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (9, 'Anna-maria', 'Springle', 'Female', 'Jatibonico', 'aspringle8@youtu.be');
-- insert into ecommernce.orders (_id, first_name, last_name, gender, city, email) values (10, 'Arielle', 'Laycock', 'Female', 'Jocón', 'alaycock9@newyorker.com');

GRANT USAGE ON SCHEMA ecommernce TO postgres;

GRANT SELECT ON ALL TABLES IN SCHEMA ecommernce TO postgres;

ALTER DEFAULT PRIVILEGES IN SCHEMA ecommernce GRANT SELECT ON TABLES TO postgres;


CREATE VIEW backup as SELECT * FROM ecommernce.mytable;

GRANT SELECT ON TABLE backup to postgres;

CREATE PUBLICATION airbyte_slot FOR TABLE ecommernce.mytable;

SELECT pg_create_logical_replication_slot('airbyte_slot', 'pgoutput');

CREATE PUBLICATION pub1 FOR ALL TABLES;
