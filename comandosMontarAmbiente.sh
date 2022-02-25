
#desplegar imagen Docker
docker-compose -f Docker/Jenkins.yml up -d
# obtener contraseña
echo ______________LOG-JENKINS______________
docker logs jenkins 
echo ______________COPEANDO BACKUP______________
cp Docker/AllBackup jenkins/
echo ______________FIN______________


