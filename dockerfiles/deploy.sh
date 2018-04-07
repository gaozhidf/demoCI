# remove build path from docker-compose.yml
echo "$(grep -v "build:" docker-compose.yml)" > docker-compose.yml

ssh -oPort=$TARGET_SERVER_PORT  \
    -o StrictHostKeyChecking=no \
    travis@$TARGET_SERVER_HOST \
    'cd ~ && \
     wget https://github.com/gaozhidf/demoCI/blob/master/docker-compose.yml -O docker-comose.yml&& \
     docker-compose down --rmi all && \
     docker-compose up -d'