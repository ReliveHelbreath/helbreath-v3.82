______________________________________
         Fichiers utiles
��������������������������������������

HBmaster.exe:
�������������
ftp://ftp.lpmintekz.com/
Pour eclosions, Patch IP journali�re, creations de comptes
et bien d'autres choses encore.
NB: Fichier inf pour mettre certaines donn�es ds la base de registre.
NB: Attention � s�lectionner HBX sinon .....

Demarrer_Serveur.exe:
���������������������
Script compil� pour d�marrer le serveur simplement.

FTP:
����
Il en faudra un pour uploader le LOGIN.CFG tr�s souvent...

Install.iit:
������������
Document Install creator. Pour cr�er simplement une install
pour les joueurs. 
(Il faut installer le soft, http://www.clickteam.com/ )


______________________________________
         Fichiers � modifier
��������������������������������������

Server../core/noticement.txt:
���������������������������
Texte de bienvenue affich� en jeu au d�marrage.

Client../Install.inf:
���������������������
M�ts � jour les clefs de base de registre n�c�ssaires
au lanceur pour savoir ou aller chercher LOGIN.CFG.
Il faut y mettre l'URL de ce fichier, avant de le faire
installer par les joueurs.

Client../LOGIN.CFG:
�������������������
Le fichier fourni initialement au joueurs a peu d'importance.
Mais il faut placer ce fichier qui contient des donn�es 
importantes pour le lanceur et le client � un emplacement
fixe sur le web.

Lorsqu'on veut jouer, le lanceur va r�cup�rer ce fichier,
pour:
- [Message] Afficher le message du hosteur
- [UPDATES] Effectuer les mises � jour automatiques.
- [PatchIP] Connaitre l'IP du serveur
- [PatchIP] D�tecter si le serveur est en route:
            IP fixe: essaye de connecter un Game server.
            IP variable: regarde r�guli�rement si LOGIN.CFG
                     a �t� modifi�.
- [PatchIP] Pinguer le serveur.
- [PatchIP] Afficher l'URL du site du serveur
- [PatchIP] Afficher le Nom du serveur.

Ce fichier sert �galement pour configurer le client:
- [CONFIG] IP, port, et mode (Utiliser LAN, sauf multi-host)


Server../HMLServer.cfg, WLserver.cfg, GateServer.cfg, gserver.cfg:
������������������������������������������������������������������
Fichiers de configuration des serveurs. Il faut modifier ici
les IP selon tes besoins. (IP interne ET externe)
HBMaster est capable de faire cel� pour tous les fichiers
� la fois. (A v�rifier, fait des sauvegardes avant.)


Server../GameConfigs/*.cfg:
���������������������������
Ici sont stock� pas mal de r�glages communes � tous les GameServers.
Ce qui date des sources Siementec est envoy� aux Games par le World
(ex: items, potions...)
Mais tout ce qui a �t� rajout� ult�rieurement est ici, car il aurait
fallu reprogramer le World, et les sources n'�taient pas disponibles.

Settings.cfg est tr�s important, il y a une doc qui en parle.



______________________________________
         Ports � forwarder
��������������������������������������
MLS: (HMLServer.cfg)   2981
WLS: (WLserver.cfg):   2881, 2882, 2883 
(il �coute 3 ports, mais le premier devrait suffire sur un serveur priv�)
Games: (gserver.cfg):   9900 et +
Pings du lanceur: Ports des Games + 20.




