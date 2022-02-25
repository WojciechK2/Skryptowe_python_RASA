FROM ubuntu:20.04

ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone 

RUN apt update && apt install -y \
	python3-pip \
	pkg-config \
	xmlsec1 \
	libxmlsec1 \
	libxml2 \
	libxml2-dev \
	libxmlsec1-dev \
	libxmlsec1-openssl

RUN python3 -m pip install xmlsec
RUN python3 -m pip install python-dotenv

RUN mkdir /home/discord_bot

COPY requirements.txt /home/discord_bot

WORKDIR /home/discord_bot

#RUN pip3 install -r requirements.txt
RUN pip3 install --upgrade pip
RUN python3 -m pip install -U discord.py
RUN pip3 install rasa-x -i https://pypi.rasa.com/simple

COPY . /home/discord_bot


#COPY model /home/discord_bot/model
#COPY bot.py /home/discord_bot
#COPY RASA_conn.py /home/discord_bot
#COPY menu.json /home/discord_bot
#COPY opening_hours.json /home/discord_bot

#EXPOSE 8888
#EXPOSE 9000
#EXPOSE 5000

#CMD cd /home/discord_bot/model && python3 -m rasa_sdk --actions actions &
#CMD rasa run --enable-api &
#CMD cd .. && python3 bot.py &
