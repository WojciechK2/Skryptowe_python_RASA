#Skryptowe_python_RASA

Credentiale dla bota przechowywane są w pliku .env (trzeba go stworzyć, bo Github nie pozwala na ukryte pliki)
Są to  token Discorda i nazwa serwera na którym ma działać.

`DISCORD_TOKEN=<TOKEN>  `   
`DISCORD_GUILD=<SERVER NAME>`

Po stworzeniu obrazu Dockera

`sudo docker build -t rasa_py .`

`sudo docker run -it "<nazwa>" sh`   

w interaktywnej sesji należu wywołać podane komendy

`cd /home/discord_bot/model && python3 -m rasa_sdk --actions actions &` (in model dir (/home/discord_bot/model))   
`rasa run --enable-api &` (in model dir (/home/discord_bot/model))   
`cd .. && python3 bot.py &` (in workdir (/home/discord_bot))   

  
Wywołanie Bota odbywa się poprzez wsponienie (mention) o nim na glownym kanale serwera:
	`@<Bot_name> <message> `

  
  Funkcjonalność:
 - pozdrowienia, pożegnania ("Hi", "Hello", "Bye"...)
 - upewnienie rozmówcy, że rozmawia z botem ("Am I talking to a bot?"/"Who are you?"...)
 - przedstawienie się i pokazanie zakresu obowiązków ("How can you help?"...)
 - zapytania o godziny otwarcia restauracji (ogólne -> zwraca cały podział godzin, szczegółowe: pytanie o konkretny dzień tygodnia lub o konkretny dzien tygodnia + godzina) ("Are you open on Mondays at 9?") -> pobrane z "openinghours.json"
 - zapytania o menu ("What's in menu?") -> pobrane z "menu.json"
 - możliwe jest przyjęcie zamowienia wraz z walidacją czy wybrana pozycja znajduje się w menu (ale nie powiedzialbym, że działa poprawnie)
