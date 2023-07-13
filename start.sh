#!/bin/bash

echo =======================================
echo Hey Shubham, Welcome
echo =======================================

sleep 3

docker-compose up -d

# docker exec -it kafka /bin/bash
docker exec -it kafka apt update -y
docker exec -it kafka apt install python3
docker exec -it kafka apt install python3-pip
docker exec -it kafka pip3 install kafka-python
docker exec -it kafka wget https://bootstrap.pypa.io/pip/3.4/get-pip.py
docker exec -it kafka python3 get-pip.py
docker exec -it kafka pip3 install --upgrade setuptools
docker exec -it kafka pip3 install pandas
docker exec -it kafka pip3 install pyarrow
docker exec -it kafka pip3 install pandasql
docker exec -it kafka pip3 install confluent-kafka
docker exec -it kafka pip3 install pykakfa
docker exec -it kafka pip3 install neo4j-driver
# docker exec -it kafka pip install boto3
docker exec -it kafka pip3 install pathlib
echo Starting neo4j downloading
docker exec -it kafka pip3 install py2neo
docker exec -it kafka pip3 install --upgrade py2neo
echo =====================
# docker exec -it kafka wget https://files.pythonhosted.org/packages/fb/2d/c01608edf575e4fee438949d03703a354acad9797ea9689a74820c3bb1b0/neo4j-5.2.0.tar.gz
# docker exec -it kafka tar -xf neo4j-5.2.0.tar.gz
# docker exec -it kafka apt update
# docker exec -it kafka apt install software-properties-common apt-transport-https ca-certificates 
# docker exec -it kafka wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
# docker exec -it kafka echo 'deb https://debian.neo4j.com stable 4.3' | tee -a /etc/apt/sources.list.d/neo4j.list
docker exec -it kafka apt update
docker exec -it kafka wget https://files.pythonhosted.org/packages/fb/2d/c01608edf575e4fee438949d03703a354acad9797ea9689a74820c3bb1b0/neo4j-5.2.0.tar.gz
docker exec -it kafka tar -xf neo4j-5.2.0.tar.gz
docker exec -it kafka pip3 install neo4j
# docker exec -it kafka pip3 install neo4jdb-python
# docker exec -it kafka systemctl start neo4j.service
echo neo4j downloaded
# docker exec -it kafka python3 /home/consumer.py
