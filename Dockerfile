FROM node:9

RUN npm install -g ganache-cli

ADD token.json ./
ADD startup.sh ./

#CMD ganache-cli -d 75.12345 --seed visit exotic maximum -a 100 > /dev/null &

#RUN sleep 5 

#RUN curl -X POST -H 'Content-Type: application/json' -d @token.json http://localhost:8545

ENTRYPOINT ./startup.sh