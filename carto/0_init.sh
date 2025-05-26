# 7z utils
sudo apt update
sudo apt install p7zip-full

# tippecanoe
sudo apt-get install git build-essential libsqlite3-dev zlib1g-dev --yes
sudo git clone https://github.com/felt/tippecanoe.git &&  cd tippecanoe && make -j && make install

# transform data
sudo apt-get install gdal-bin