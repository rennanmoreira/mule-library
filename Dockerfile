#Imagem com o software Runtime da MuleSoft (Bibliotecas: JAVA e MAVEN).
FROM ivankrizsan/mule-docker:3.9.0

#Definir o diretório padrão do container para o padrão do Runtime da MuleSoft.
WORKDIR /opt/mule-standalone/

#Copiar a aplicação localizada no host para o repositório de aplicações do container.
COPY mule-library/ apps/mule-library/
