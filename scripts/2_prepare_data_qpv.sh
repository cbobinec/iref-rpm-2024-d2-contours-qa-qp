# https://www.data.gouv.fr/fr/datasets/quartiers-prioritaires-de-la-politique-de-la-ville-qpv/#/resources
wget "https://www.data.gouv.fr/fr/datasets/r/942d4ee8-8142-4556-8ea1-335537ce1119" -O "qpv2024.geojson"

# creation tiles (pmtiles)
tippecanoe qpv2024.geojson -o html/qpv2024.pmtiles
