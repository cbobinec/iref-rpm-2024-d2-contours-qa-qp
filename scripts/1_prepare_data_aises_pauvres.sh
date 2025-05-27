# extract 7z archives
7z e quartiers_aises.7z
7z e quartiers_pauvres.7z

# transform to geojson for tippecanoe
ogr2ogr quartiers_pauvres.geojson quartiers_pauvres.gpkg
ogr2ogr quartiers_aises.geojson quartiers_aises.gpkg

# creation tiles (pmtiles)
tippecanoe quartiers_aises.geojson -o html/quartiers_aises.pmtiles
tippecanoe quartiers_pauvres.geojson -o html/quartiers_pauvres.pmtiles
