# 1. نحدد صورة الأساس (Base image)
FROM node:18-alpine

# 2. نحدد مجلد العمل داخل الحاوية
WORKDIR /app

# 3. ننقل ملفي package.json و package-lock.json (عشان npm يثبت التبعيات)
COPY package*.json ./

# 4. تثبيت التبعيات
RUN npm install

# 5. نسخ باقي ملفات المشروع
COPY . .

# 6. تعيين المنفذ الذي سيعمل عليه التطبيق داخل الحاوية
EXPOSE 3000

# 7. الأمر الذي يبدأ السيرفر
CMD ["node", "server.js"]
