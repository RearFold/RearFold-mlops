From python:3.8.10-slim
RUN apt update && apt install -y git

ENV PROJECT_DIR preprocess
WORKDIR /${PROJECT_DIR}

COPY ./preprocess/requirements.txt /${PROJECT_DIR}/

RUN pip install -r requirements.txt
RUN pip install 'dvc[s3]'

COPY ./preprocess/save_data.sh /${PROJECT_DIR}/
COPY ./preprocess/preprocess.py /${PROJECT_DIR}/

CMD ["python", "preprocess.py"]