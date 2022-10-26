FROM python:3.10-slim-buster

WORKDIR /app
COPY . .
    
RUN pip install -r requirements.txt

EXPOSE 80 443

ENTRYPOINT [ "python3", "main.py" ]