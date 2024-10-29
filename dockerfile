# Gunakan image Node.js versi terbaru atau yang sesuai dengan proyek Anda
FROM node:18-alpine

# Set work directory dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Instal dependensi
RUN npm install

# Salin semua file dan folder ke dalam work directory di container
COPY . .

# Build proyek (jika menggunakan Next.js untuk mem-build)
RUN npm run build

# Ekspos port yang akan digunakan (sesuai dengan port aplikasi, misalnya 3000)
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]
