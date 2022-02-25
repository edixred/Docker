
#clonar Repositorio
git clone https://github.com/edixred/Docker.git
#desplegar imagen Docker
docker-compose -f /Docker/Jenkins.yml up -d
# obtener contraseña
docker logs jenkins 
cp Docker/AllBackup jenkins/


