mkdir -p ./volumes/app/mattermost/{data,logs,config,plugins,client-plugins}
chown -R 2000:2000 ./volumes/app/mattermost/
docker network create --driver bridge devops
#docker-compose start
