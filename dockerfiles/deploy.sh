
ssh -oPort=$TARGET_SERVER_PORT  \
    -o StrictHostKeyChecking=no \
    travis@$TARGET_SERVER_HOST \
    'cd ~ && source .profile && \
     rm  -f docker-compose.yml && \
     wget https://raw.githubusercontent.com/gaozhidf/demoCI/master/docker-compose.yml && \
     echo "$(grep -v "build:" docker-compose.yml)" > docker-compose.yml && \
     docker-compose down --rmi all && \
     docker-compose up -d'
