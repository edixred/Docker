#desplegar imagen Docker
docker-compose -f Docker/Jenkins.yml up -d
# obtener contraseña
echo ______________Jenkins Listo______________
echo ______________ restaurando BACKUP Jobs ______________
cp Docker/AllBackup jenkins/
echo ______________ Descargando BACKUP Plugins ______________
chmod 400 Docker/demokey
scp -i Docker/demokey ubuntu@ec2-34-205-146-122.compute-1.amazonaws.com:/home/ubuntu/bkjenkins.tar .
echo ______________ Restaurando BACKUP Plugins ______________
tar -xvf bkjenkins2.tar
docker restart jenkins
sleep 20
echo ______________ Reinicio Terminado ______________

