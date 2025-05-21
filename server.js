// استدعاء مكتبة express
const express = require('express');

// إنشاء تطبيق Express
const app = express();

// تحديد رقم المنفذ الذي سيعمل عليه الخادم
const PORT = process.env.PORT || 3000;

// إعداد راوت (مسار) رئيسي بسيط للصفحة الرئيسية
app.get('/', (req, res) => {
  res.send('مرحبًا بك في مشروع myproject 🎉');
});

// تشغيل الخادم والاستماع على المنفذ المحدد
app.listen(PORT, () => {
  console.log(`🚀 الخادم يعمل على http://localhost:${PORT}`);
});
