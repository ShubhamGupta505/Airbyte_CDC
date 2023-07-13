#!/bin/bash

echo =======================================
echo Hey Shubham, Welcome
echo =======================================

sleep 3

docker-compose up -d

# docker exec -it kafka /bin/bash

# docker exec -it kafka apt update -y
# docker exec -it kafka apt install python3
# docker exec -it kafka apt install python3-pip
docker exec -it kafka1 pip3 install kafka-python

# docker exec -it kafka wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
# docker exec -it kafka python get-pip.py
# docker exec -it kafka pip3 install --upgrade setuptools

docker exec -it kafka1 pip3 install pandas
docker exec -it kafka1 pip3 install pyarrow
docker exec -it kafka1 pip3 install pandasql
docker exec -it kafka1 pip3 install confluent-kafka
# docker exec -it kafka pip3 install pykakfa (giving error could not found)
docker exec -it kafka1 pip3 install pathlib
echo Starting neo4j downloading
docker exec -it kafka1 pip3 install neo4j
docker exec -it kafka1 pip3 install py2neo
docker exec -it kafka1 pip3 install --upgrade py2neo
echo =====================
# docker exec -it kafka apt update
# docker exec -it kafka1 touch /home/appuser/files/data.csv
docker exec -it kafka1 python /home/consumer.py