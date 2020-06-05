# README

Ceci est un simple `rails new` + quelques scaffoldings.

Il y a 2 parties distincte dans cette application :

- http://localhost:3000/ : le site public
- http://localhost:3000/admin : la zone d'administration

Pour ce test, coté site web, il faut créer le site public :

 - mettre en place un layout afin d'avoir un menu identique sur toutes les pages
   - la liste les différentes categories de shop qui existent et ont au moins 1 shop disponible sera suffisante dans le menu
 - avoir une page d'accueil qui liste les commerçants "disponible" (ici, on se contentera de vérifier s'il est en ligne)
   - chaque commercant doit avoir une vignette comme sur epicery.com (pas de soucis pour mettre une photo en dur)
 - avoir une page par commerçant accessible via /shops/:slug
   - chaque page doit lister toutes les categories de produits
   - pour chaque catégorie lister les produits de ce shop uniquement
   - pour le design, on s'inspirera de https://www.epicery.com/epiceries/boucherie-moderne, mais sans le "Voir tout"
   - attention, si un shop n'a aucun produit, il faut un message d'explication pour le client plutot qu'une page blanche


 - il n'y a pas besoin de recherche
 - il n'y a pas besoin de gestion du panier
 - des tests automatiques seraient un plus
   - j'ai volontairement supprimer le repertoire créé par `rails new` pour laisser toute liberté la dessus

L'idée n'est pas d'y passer 3 jours, mais quelques heures. Libre à toi d'y passer plus ou moins en fonction de ce que tu veux finir ou faire en plus
