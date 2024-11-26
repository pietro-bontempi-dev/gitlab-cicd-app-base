# Usando imagem base
FROM node:16-alpine

# Definindo diretório de trabalho
WORKDIR /usr/src/app

# Copiando e instalando dependências
COPY ./app/package*.json ./
RUN npm install --production

# Copiando o restante do código
COPY ./app .

# Variável de ambiente para porta
ENV PORT=3000

# Expondo porta da aplicação
EXPOSE $PORT

# Comando de inicialização
CMD ["npm", "start"]

