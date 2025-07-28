FROM python:3.10-slim

RUN apt-get update && apt-get install -y git

# نسخ الكود من GitHub أو من ملفات المشروع
RUN git clone https://github.com/telethonArab/Arab.git /root/arab

WORKDIR /root/arab

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "stringiqthon.py"]
