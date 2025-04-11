### Insee Références Revenus et patrimoine des ménages 2024 – Dossier 2 – Contours des quartiers utilisés dans l’étude "Qui habite dans les quartiers les plus pauvres et les plus aisés de France ?"

Ce dépôt contient les contours des quartiers définis dans le cadre de l’étude "Qui habite dans les quartiers les plus pauvres et les plus aisés de France ?", qui constitue le second dossier de [l’Insee Références Revenus et patrimoine des ménage 2024](https://www.insee.fr/fr/statistiques/7941443?sommaire=7941491). 

Ces fichiers sont au format `.gpkg`, facilement lisibles depuis de nombreux logiciels de traitement de données géographiques et/ou statistiques. Par exemple, avec le logiciel R : 

```r
# Chargement des contours
library(sf)
quartiers_aises <- st_read("quartiers_aises.gpkg")

# Représentation des quartiers aisés de l'unité urbaine de Marseille
library(leaflet)
quartiers_aises |>
  subset(uu2020 == "00759") |>
  leaflet() |> 
  addPolygons() |>
  addTiles()
```

Ces fichiers contiennent les éléments suivants : 

- id_quartier : identifiant du quartier ; 
- uu2020 : code de l’[unité urbaine](https://www.insee.fr/fr/metadonnees/definition/c1501) du quartier ;
- libuu2020 : libellé de l’unité urbaine du quartier ;
- seuil_niveau_vie_median : seuil de [niveau de vie](https://www.insee.fr/fr/metadonnees/definition/c1890) médian utilisé pour définir le quartier (*cf. infra*) ;
- geom : contour géométrique du quartier.

**Remarques** (*cf*. encadré "Méthode" de l'étude) : 

- le seuil de niveau de vie médian correspond au niveau de vie médian mensuel maximum (resp. minimum) pour qu'un quartier soit considéré "pauvre" (resp. "aisé"). Il varie d'une unité urbaine à une autre ;
- le niveau de vie médian d'un quartier ne coïncide en général pas avec le seuil de niveau de vie de son unité urbaine : pour les quartiers pauvres il est parfois sensiblement inférieur au seuil, pour les quartiers aisés il est parfois sensiblement supérieur au seuil. En ce sens, le seuil utilisé pour constituer un quartier ne peut pas être assimilé au niveau de vie médian de ses habitants mais seulement à un majorant (quartier pauvre) ou un minorant (quartier aisé) ;
- par construction, tous les quartiers comptent au moins 500 habitants (même les quartiers constitués d'un seul carreau).

**Source** : les données utilisées pour constituer les quartiers (seuil de niveau de vie médian, population) sont issues du Fichier localisé social et fiscal (Filosofi) 2021. Le carroyage a été réalisé de façon *ad hoc* selon une grille de carreaux de 200m de côté, en utilisant la projection usuelle pour chaque territoire (codes EPSG : 2154 pour la France métropolitaine, 5490 pour la Martinique et 2975 pour La Réunion).

**Mise à jour le 11/04/2025**

Modification du rattachement de 18 quartiers (16 aisés, 2 pauvres) à leur unité urbaine. La liste et le contour des quartiers ne sont pas modifiés et aucune statistique présentée dans la publication associée n'est affectée.