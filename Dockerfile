FROM python:3.10-slim

WORKDIR /app

COPY . .

# تثبيت git لتثبيت البكجات من GitHub
RUN apt-get update && apt-get install -y git

# اختياري: تحديث pip
RUN pip install --upgrade pip

# تثبيت المتطلبات
RUN pip install --no-cache-dir -r requirements.txt

# بدء تشغيل البوت
CMD ["python", "stringiqthon.py"]
