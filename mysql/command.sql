CREATE DATABASE IF NOT EXISTS ecommernce;

-- drop user 'airbyte'@'%';

FLUSH PRIVILEGES;

CREATE USER 'airbyte'@'%' IDENTIFIED BY 'password';

GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'airbyte'@'%';

use ecommernce;

-- create table orders (
-- 	_id int auto_increment primary key,
--     store_id int not null,
--     order_date varchar(255) not null,
--     channel varchar(25),
--     country varchar(25),
--     total float not null,
--     status varchar(25)
-- );

-- insert into orders (_id, store_id, order_date, channel, country, total, status) values (1, 100, '2021-08-15', 'STORE', 'Hungary', 173.04, 'ACTIVE');


-- create table orders (
-- 	_id INT primary key,
-- 	first_name VARCHAR(50),
-- 	last_name VARCHAR(50),
-- 	gender VARCHAR(50),
-- 	city VARCHAR(50),
-- 	email VARCHAR(50)
-- );


CREATE TABLE mytable(
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

INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Golden Boys','Normal','No','No','suspense','Yes','No','No','Jeet Goswami','Ravi Varma','Baba Jagirdar',5,5000000,85000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Kaccha Limboo','Holiday','No','No','drama','Yes','No','Yes','Karan Bhanushali','Sagar Ballary','Amardeep Nijjer',75,15000000,825000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Not A Love Story','Holiday','No','No','thriller','No','No','No','Mahie Gill','Ram Gopal Verma','Sandeep Chowta',525,75000000,56700000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Qaidi Band','Holiday','No','No','drama','Yes','No','No','Aadar Jain','Habib Faisal','Amit Trivedi',800,210000000,4500000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Chaatwali','Holiday','No','No','adult','Yes','Yes','Yes','Aadil Khan','Aadil Khan','Babloo Ustad',1,1000000,1075000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Shuttlecock Boys','Normal','No','No','comedy','Yes','Yes','Yes','Aakar Kaushik','Hemant Gaba','Avinash Baghel',10,5000000,170000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Dirty Marriage','Holiday','No','No','adult','Yes','No','Yes','Aakash','Priyanka','Dharma',2,1500000,35000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Future To Bright Hai Ji','Holiday','No','No','drama','No','Yes','Yes','Aamir Bashir','Sanjay Amar','Amir Ali',30,15000000,825000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Ghajini','Holiday','Yes','No','action','No','Yes','No','Aamir Khan','A.R. Murugadoss','A.R. Rehman',1550,520000000,1945820000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Taare Zameen Par','Holiday','No','No','drama','No','Yes','No','Aamir Khan','Aamir Khan','Shankar - Ehsaan - Loy',500,180000000,875785000);
INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Mangal Pandey - The Rising','Holiday','No','No','drama','No','No','No','Aamir Khan','Ketan Mehta','A.R. Rehman',675,370000000,525785000);
-- INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Fanaa','Normal','No','No','love_story','No','No','No','Aamir Khan','Kunal Kohli','Jatin - Lalit',650,300000000,1054800000);
-- INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Dangal','Holiday','No','No','drama','No','No','No','Aamir Khan','Nitish Tiwari','Pritam',4250,1320000000,7024750000);
-- INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('3 Idiots','Holiday','No','No','drama','No','No','No','Aamir Khan','Rajkumar Hirani','Shantanu Moitra',1750,770000000,3491035000);
-- INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('PK','Normal','No','No','drama','No','No','No','Aamir Khan','Rajkumar Hirani','Ajay - Atul',3600,1220000000,6160362500);
-- INSERT INTO mytable(movie_name,release_period,whether_remake,whether_franchise,genre,new_actor,new_director,new_music_director,lead_star,director,music_director,number_of_screens,budgetinr,revenueinr) VALUES ('Rang De Basanti','Holiday','No','No','drama','No','No','No','Aamir Khan','Rakesh Omprakash Mehra','A.R. Rehman',600,280000000,979080000);