# Menggunakan base image Node.js versi 18 alpine
FROM node:18-alpine

# Menetapkan env NODE_ENV menjadi production
ENV NODE_ENV=production

# Menentukan working directory
WORKDIR /src

# Menyalin berkas yang diperlukan
COPY *.j* ./

# Menginstall dependensi
RUN npm ci

# Mengekspos port 3000 
EXPOSE 3000

# Menjalankan node index.js
CMD ["node", "index.js"]