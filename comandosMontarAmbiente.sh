
#desplegar imagen Docker
docker-compose -f /Docker/Jenkins.yml up -d
# obtener contraseña
docker logs jenkins 
cp Docker/AllBackup jenkins/


