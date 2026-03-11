Hoe je dit gebruikt op je VM
Script uploaden/maken: Kopieer de code hierboven naar een bestand genaamd install_lamp.sh op je Debian machine.

Uitvoerbaar maken: Geef het script de juiste rechten met:
chmod +x install_lamp.sh

Uitvoeren: Start de installatie:
./install_lamp.sh



Toegang via je Laptop (VirtualBox instellingen)
Om de browser op je laptop te gebruiken om de server in de VM te benaderen, moet je de Netwerk instellingen van je VirtualBox machine aanpassen:

Ga naar Instellingen van de VM > Netwerk.

Kies bij 'Gekoppeld aan' voor Adapter met brug (Bridged Adapter). Hierdoor krijgt de VM een eigen IP-adres in je netwerk.

Alternatief (NAT): Gebruik Port Forwarding en stuur poort 80 (HTTP), 9090 (Cockpit) en 22 (SSH) door naar je localhost.

Welk Admin Panel?
Ik heb Cockpit in het script gezet. Het is gratis, opensource en zit standaard in de Debian-bronnen. Het geeft je een grafisch overzicht van je CPU, RAM, schijfgebruik en je kunt zelfs een terminal openen in je browser. Het is veel lichter dan DirectAdmin voor een ontwikkelomgeving.