# Usa una imagen base de Go
FROM golang:1.20-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos del proyecto
COPY . .

# Descarga las dependencias
RUN go mod download

# Compila la aplicación Go
RUN go build -o app .

# Expone el puerto 8080
EXPOSE 8080

# Define el comando para ejecutar la aplicación
CMD ["./app"]