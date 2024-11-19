# Usa una imagen base oficial de Node.js
FROM node:18

# Define el directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el código al contenedor
COPY . .

# Construye la aplicación
RUN npm run build

# Expone el puerto
EXPOSE 3000

# Inicia la aplicación en modo producción
CMD ["npm", "run", "start:prod"]
