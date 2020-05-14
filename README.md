# README

Ceci est un simple `rails new` + quelques scaffolding et une mini arborescence "semblable" à notre prod qui permet de visualiser le catalogue des differents commercants qui peuvent me livrer.

Vu qu'il n'y a aucun menu, voila les URLs à connaitre pour naviguer sur le site :

Partie publique :

- http://localhost:3000/
- http://localhost:3000/shops
- http://localhost:3000/shops/:id


Partie admin :

- http://localhost:3000/admin/products
- http://localhost:3000/admin/shops


Pour ce test, coté site web, il faut :

 - afficher le prix et la description de chaque produit
 - afficher un message d'explication lorsqu'un shop ne vend aucun produit
 - ranger les produits par catégorie sur la page du shop
   - indice: il faut créer un nouveau model
   - ex: Fruits / Légumes / Herbes aromatiques
   - attention: un produit doit pouvoir être dans plusieurs categories et être affiché dans chacune d'entres elles
   - les categories doivent pouvoir être triées dans la partie admin pour forcer l'ordre d'affichage coté site
 - faire un peu d'UI sur la partie public (/shops + /shops/:id) pour rendre les pages moins "brutes" et plus "jolies"
   - par exemple, afficher des "cartes" commercants comme on les a sur epicery.com
   - interdiction de reprendre le CSS d'epicery.com
   - aucune obligation d'être responsive, le desktop suffira
 - mettre en place des tests automatiques
   - j'ai volontairement supprimer le repertoire créé par `rails new` pour laisser toute liberté la dessus

Et cote admin, il faut :

 - pouvoir créer / modifier / supprimer les catégories
 - pouvoir ranger les produits dans 1 ou plusieurs catégories


L'idée n'est pas d'y passer 3 jours, mais quelques heures. Libre à toi d'y passer plus ou moins en fonction de ce que tu veux finir ou faire en plus
