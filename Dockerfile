#Imagem com o software Runtime da MuleSoft.
FROM ivankrizsan/mule-docker:3.9.0

#Definir o diretório padrão do container para o padrão do Runtime da MuleSoft.
WORKDIR /opt/mule-standalone/

#Copiar a aplicação localizada no host para o repositório de aplicações do container.
COPY . apps/mule-library/

#Instalar o JAVA e o MAVEN para executar os testes unitários.
RUN    apt-get update                          &&\
       apt-get install -y openjdk-8-jre        &&\
       apt-get install -y maven                &&\
       apt-get autoremove                      &&\
       apt-get autoclean

#Executar os testes unitários.
RUN mvn test
