# extract
7z e quartiers_aises.7z
7z e quartiers_pauvres.7z

# transform for tippecanoe
ogr2ogr quartiers_pauvres.geojson quartiers_pauvres.gpkg
ogr2ogr quartiers_aises.geojson quartiers_aises.gpkg

# tiles
tippecanoe quartiers_aises.geojson -o carto/quartiers_aises.pmtiles
tippecanoe quartiers_pauvres.geojson -o carto/quartiers_pauvres.pmtiles
