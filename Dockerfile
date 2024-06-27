# Usa una imagen base de Node.js
FROM node:16

# Instala curl y jq
RUN apt-get update && apt-get install -y curl jq

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Instala alexa-cookie2 globalmente
RUN npm install -g alexa-cookie2

# Descarga el script alexa-remote-control
RUN curl -O https://raw.githubusercontent.com/thorsten-gehrig/alexa-remote-control/master/alexa_remote_control.sh

# Haz el script ejecutable
RUN chmod +x alexa_remote_control.sh

# Define el comando por defecto para el contenedor
CMD ["/bin/bash"]
