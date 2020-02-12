FROM continuumio/anaconda3:latest

WORKDIR /code
EXPOSE 8888

RUN apt-get update && apt-get install -y gcc

RUN pip install web3

CMD jupyter notebook --notebook-dir=/code --ip='0.0.0.0' --port=8888 --no-browser --allow-root