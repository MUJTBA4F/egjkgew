FROM telethonarab/arab:slim-buster

RUN git clone https://github.com/telethonarab/arab.git /root/arab

WORKDIR /root/arab

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Arab/bin:$PATH"

CMD ["python3","-m","arab"]
