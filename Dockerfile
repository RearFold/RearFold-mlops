From python:3.8.10-slim
RUN apt-get update && apt-get install git

ENV PROJECT_DIR preprocess
WORKDIR /${PROJECT_DIR}

COPY ./preprocess/requirements.txt
RUN pip install -r requirements.txt
RUN pip install 'dvc[s3]'

COPY ./preprocess/save_data.sh
COPY ./preprocess/preprocess.py
