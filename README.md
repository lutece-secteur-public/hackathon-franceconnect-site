# Guichet citoyen de la Ville de Palyma 
##(une cr�ation des villes de Paris, Lyon et Marseille)

Cette plate-forme de d�monstration des possibilit�s de **FranceConnect** a �t� r�alis�e
lors du Hackathon des 18 et 19 juin 2015 organis� par la **DISIC**. 

Voici la couverture fonctionnelle du PoC r�alis� pendant le Hackathon :

- un t�l�service demande de carte de stationnement bas� sur les informations du v�hicule enregistr�es 
  dans le fichier des immatriculations de la pr�fecture de Police,
- un t�l�service de calcul du quotient familial avec la production d'une attestation au format PDF,  
- une f�d�ration d'identit� entre le compte local de la Ville de Palyma et le compte FranceConnect, 
- une int�gration dans le guichet du compte usager de la Ville de Palyma
- un traitement des demandes via le moteur de Worflow afin de g�n�rer des PDF renvoy�s aux usagers par mail et dans leur vue du guichet. 
- une liaison avec le module de rendez-vous en cas de probl�me dans la proc�dure incluant la notification du RDV dans le guichet.

## Architecture technique
L'ensemble de ce site repose sur les composants LUTECE :
- Le [plugin FranceConnect](https://github.com/lutece-platform/lutece-auth-plugin-franceconnect) permettant d'acc�der aux fournisseurs de donn�es FC.
- Le [plugin Stationnement](https://github.com/mairie-de-paris/hackathon-franceconnect-poc-stationnement.git) T�l�service de demande de carte de stationnement.
- Le [plugin QuotientFamille](https://github.com/mairie-de-paris/hackathon-franceconnect-poc-quotientfamille.git) T�l�service de calcul du Quotient Familial.
- Les plugins g�n�riques CRM, Workflow, Directory, PDFProducer, MyLutece


## Acc�s au d�monstrateur en ligne

Le d�monstrateur en ligne se trouve � l�adresse suivante : 
https://dev.lutece.paris.fr/hackathon-dev/

Compte de connexion sur l�authentification Ville : palyma@palyma.fr / palyma@palyma.fr
Compte de connexion sur l�authentification FranceConnect : 118 / 123

## Construire la Webapp

Pour assembler le site, avec l'outil **Maven**, � partir du code source se trouvant dans ce repository, tapez la commande :
```
mvn lutece:site-assembly
```
