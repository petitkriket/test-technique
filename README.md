# README

Ceci est un simple `rails new` + quelques scaffoldings.

Il y a 2 parties distincte dans cette application :

- http://localhost:3000/ : le site public
- http://localhost:3000/admin : la zone d'administration

Pour ce test, coté site web, il faut créer le site public :

1.

- [x] mettre en place un layout afin d'avoir un menu identique sur toutes les pages
  - [x] la liste des différentes categories de shop qui existent et ont au moins 1 shop disponible sera suffisante dans le menu

2.

- [x] avoir une page d'accueil qui liste les commerçants "disponibles"
  - [x] chaque commercant doit avoir une vignette comme sur epicery.com (pas de soucis pour mettre une photo en dur)
  - [x] un shop est "disponible" si son `available_on` est dans le passé

3.

- [x] avoir une page par commerçant accessible via `/shops/:slug`

  - [x] chaque page doit lister toutes les categories de produits
  - [x] pour chaque catégorie, lister les produits de ce shop uniquement (NOTE : filtré dans la vue, horrible...)
  - [ ] pour le design, on s'inspirera de https://www.epicery.com/epiceries/boucherie-moderne, mais sans les liens de type "Voir tout"
  - [x] attention, si un shop n'a aucun produit, il faut un message d'explication pour le client plutôt qu'une page blanche
  - [x] si une catégorie n'a aucun produit, elle ne doit pas être affichée

### N.B.

- il n'y a pas besoin de recherche
- il n'y a pas besoin de gestion du panier
- [ ] des tests automatiques seraient un plus
  - j'ai volontairement supprimé le repertoire `test` créé par `rails new` pour laisser toute liberté dans le choix du framework de test
    L'idée n'est pas de passer 3 jours à faire ce test mais quelques heures. Ceci étant dit, libre à toi d'y passer plus ou moins de temps en fonction de ce que tu veux finir ou faire en plus !

## Commentaires

Pour demarrer le projet

```bash
$ rails db:migrate && rails db:seed
$ yarn
$ rails s
```

Dev [backlog](docs/21062020_init.md) au besoin
