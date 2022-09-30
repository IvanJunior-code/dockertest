#usa a imagem oficial do node, versão 14, como imagem base para este projeto
FROM node:14

#diretorio em que a imagem vai tratar como padrão
WORKDIR /app-node

#ARG são variáveis definidas para o container em tempo de criação da imagem (normalmente utilizado para construção da imagem)
ARG PORT_BUILD=6000

#ENV são variáveis para serem utilizadas dentro do container em tempo de execução, inseriondo-as no ambiente interno do container
ENV PORT=$PORT_BUILD

#vai expor a aplicação na porta definida no tempo de criação
EXPOSE $PORT_BUILD

#copia todo o conteudo da pasta atual que está o Dockerfile (do host) para a pasta atual da imagem WORKDIR
COPY . . 

#vai executar na pasta padrão do WORKDIR
RUN npm install

#vai executar na pasta padrão do WORKDIR
ENTRYPOINT npm start
