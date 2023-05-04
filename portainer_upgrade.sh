echo "Portainer va s'arreter"
docker stop portainer
echo "Supprime l'ancienne image"
docker rm portainer
echo "Télécharge la nouvelle image de portainer"
docker pull portainer/portainer-ce:latest
echo "On Lance le docker portainer"
docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
echo "Voici les listes de processus en cours.."
docker ps
