# Guichet citoyen de la Ville de Palyma 
##(une création des villes de Paris, Lyon et Marseille)

Cette plate-forme de démonstration des possibilités de **FranceConnect** a été réalisée
lors du Hackathon des 18 et 19 juin 2015 organisé par la **DISIC**. 

Voici la couverture fonctionnelle du PoC réalisé pendant le Hackathon :

- un téléservice demande de carte de stationnement basé sur les informations du véhicule enregistrées 
  dans le fichier des immatriculations de la préfecture de Police,
- un téléservice de calcul du quotient familial avec la production d'une attestation au format PDF,  
- une fédération d'identité entre le compte local de la Ville de Palyma et le compte FranceConnect, 
- une intégration dans le guichet du compte usager de la Ville de Palyma
- un traitement des demandes via le moteur de Worflow afin de générer des PDF renvoyés aux usagers par mail et dans leur vue du guichet. 
- une liaison avec le module de rendez-vous en cas de problème dans la procédure incluant la notification du RDV dans le guichet.

## Architecture technique
L'ensemble de ce site repose sur les composants LUTECE :
- Le [plugin FranceConnect](https://github.com/lutece-platform/lutece-auth-plugin-franceconnect) permettant d'accéder aux fournisseurs de données FC.
- Le [plugin Stationnement](https://github.com/mairie-de-paris/hackathon-franceconnect-poc-stationnement.git) Téléservice de demande de carte de stationnement.
- Le [plugin QuotientFamille](https://github.com/mairie-de-paris/hackathon-franceconnect-poc-quotientfamille.git) Téléservice de calcul du Quotient Familial.
- Les plugins génériques CRM, Workflow, Directory, PDFProducer, MyLutece


## Accès au démonstrateur en ligne

Le démonstrateur en ligne se trouve à l’adresse suivante : 
https://dev.lutece.paris.fr/hackathon-dev/

Compte de connexion sur l’authentification Ville : palyma@palyma.fr / palyma@palyma.fr
Compte de connexion sur l’authentification FranceConnect : 118 / 123

## Construire la Webapp

Pour assembler le site, avec l'outil **Maven**, à partir du code source se trouvant dans ce repository, tapez la commande :
```
mvn lutece:site-assembly
```
