#desplegar imagen Docker
docker-compose -f Docker/Jenkins.yml up -d
# obtener contraseña
echo ______________LOG-JENKINS______________
docker logs jenkins 
echo ______________COPEANDO BACKUP______________
cp Docker/AllBackup jenkins/
echo ______________DESCARGANDO BACKUP PLUGINS______________
scp -i Docker/demokey ubuntu@ec2-34-205-146-122.compute-1.amazonaws.com:/home/ubuntu/bkjenkins.tar .
tar -xvf bkjenkins.tar
docker restart jenkins


