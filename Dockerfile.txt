FROM rasa/rasa:3.6.2

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

RUN rasa train

CMD ["run", "--enable-api", "--cors", "*", "--port", "10000"]