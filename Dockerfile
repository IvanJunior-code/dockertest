#usa a imagem oficial do node, versão 14, como imagem base para este projeto
FROM node:14

#diretorio em que a imagem vai tratar como padrão
WORKDIR /app-node

#copia todo o conteudo da pasta atual que está o Dockerfile (do host) para a pasta atual da imagem WORKDIR
COPY . . 

#vai executar na pasta padrão do WORKDIR
RUN npm install

#vai executar na pasta padrão do WORKDIR
ENTRYPOINT npm start
