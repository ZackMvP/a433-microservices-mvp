#Memanggil Image Node.js versi 14
FROM node:14
#Menset working directory ke /app
WORKDIR /app
#Mengkopi source code ke working directory
COPY . .
#Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container item-db sebagai database host
ENV NODE_ENV=production  
ENV DB_HOST=item-db
#Menginstal dependencies dan build
RUN npm install --production --unsafe-perm && npm run build
#Membuka port 8080
EXPOSE 8080
#Menjalankan server
CMD ["npm", "start"]
