# Gunakan image node.js
FROM node:18

# Setel direktori kerja
WORKDIR /app

# Salin package.json dan package-lock.json untuk instalasi dependensi
COPY package*.json ./

# Instal dependensi
RUN npm install

# Salin seluruh proyek
COPY . .

# Build proyek Docusaurus
RUN npm run build

# Ekspor port yang diperlukan (jika aplikasi menggunakan port tertentu)
EXPOSE 3000

# Perintah untuk menjalankan aplikasi ketika kontainer dijalankan
CMD ["npm", "start"]
