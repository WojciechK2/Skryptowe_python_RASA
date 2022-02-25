#Skryptowe_python_RASA

Credentiale dla bota przechowywane są w pliku .env
Są to  token Discorda i nazwa serwera na którym ma działać.

Po stworzeniu obrazu Dockera, należy w interaktywnej sesji wywołać podane komendy

sudo docker build -t rasa_py .

sudo docker run -it <nazwa> sh

cd /home/discord_bot/model && python3 -m rasa_sdk --actions actions &
rasa run --enable-api &
cd .. && python3 bot.py &
