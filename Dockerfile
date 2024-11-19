FROM node:18

WORKDIR /app

# Copia los archivos de dependencias (package.json y package-lock.json)
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código del proyecto al contenedor
COPY . .

# Expone el puerto en el que escucha la aplicación (habitualmente 3000 en NestJS)
EXPOSE 3000

# Compila el proyecto (NestJS usa TypeScript y necesita ser transpilado)
RUN npm run build

# Define el comando para iniciar la aplicación
CMD ["npm", "run", "start:prod"]
