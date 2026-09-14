#!/bin/sh
set -e
#Utiliza a porta que o render disponibiliza e se estiver rodando localmente utiliza a porta 8080
PORT="${PORT:-8080}"
#Muda a configuração do TomCant dentro do container para usar essa porta
sed -i "s/port=\"8080\"/port=\"${PORT}\"/" /usr/local/tomcat/conf/server.xml

exec catalina.sh run