docker-compose down
docker rmi qijunbo/mm_wiki 
chmod +x *.sh
docker image build -t qijunbo/mm_wiki  .
docker images 
