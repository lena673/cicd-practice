FROM python:3.11-slim

RUN pip install -r requirement.txt

RUN apt-get update && \
    apt-get install -y nano iputils-ping
COPY . .

EXPOSE 8000

CMD [ "python" , "app.py" ]