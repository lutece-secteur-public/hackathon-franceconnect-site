# Guichet citoyen de la Ville de Palyma 
##(une création des villes de Paris, Lyon et Marseille)

Cette plate-forme de démonstration des possibilités de FranceConnect a été réalisée
lors du Hackathon des 18 et 19 juin 2015 organisé par la DISIC. 

Voici la couverture fonctionnelle du PoC réalisé pendant le Hackathon :

- 2 téléservices dont un avec quelques complexités au niveau des données (fichier des cartes grises) et dont les spécifications étaient fournies par Lyon et Marseille au fil de l'eau, 
- une fédération d'identité entre le compte local de la Ville de Palyma et le compte FranceConnect, 
- une intégration dans le guichet du compte usager de la Ville de Palyma
- un traitement des demandes via le moteur de Worflow afin de générer des PDF renvoyés aux usagers par mail et dans leur vue du guichet. 
- une liaison avec le module de rendez-vous en cas de problème dans la procédure incluant la notification du RDV dans le guichet.

## Architecture technique
L'ensemble de ce site repose sur les composants LUTECE :
- Le [plugin FranceConnect]{https://github.com/lutece-platform/lutece-auth-plugin-franceconnect "Plugin FranceConnect sur GitHub"} permettant d'accéder aux fournisseurs de données FC.
- Les plugins génériques CRM, Workflow, Directory, PDFProducer


## Accès au démonstrateur en ligne

Le POC en ligne se trouve à l’adresse suivante : 
https://dev.lutece.paris.fr/hackathon-dev/

Compte de connexion sur l’authentification Ville : palyma@palyma.fr / palyma@palyma.fr
Compte de connexion sur l’authentification FranceConnect : 118 / 123

## Construire la Webapp

Pour assembler le site, avec l'outil Maven, à partir du code source se trouvant dans ce repository, tapez la commande :
'''
mvn lutece:site-assembly
'''