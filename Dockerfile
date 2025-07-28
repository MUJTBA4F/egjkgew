FROM python:3.10-slim

WORKDIR /app

COPY . .

# ✅ هذا هو السطر المهم لإضافة git
RUN apt-get update && apt-get install -y git

# ثم تثبيت المتطلبات
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "stringiqthon.py"]
