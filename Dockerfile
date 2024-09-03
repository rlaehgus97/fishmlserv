#FROM python:3.8
FROM datamario24/python311scikitlearn-fastapi:1.0.0

WORKDIR /codes

#COPY . /codes/
COPY src/fishmlserv/main.py /codes/
#COPY ./requirements.txt /codes/requirements.txt
COPY src/fishmlserv/model/get-model-path.py /codes/
COPY src/fishmlserv/predict.py /codes/
#위의 두 커맨드는 docker에 올려서 해당 파일을 실행시키기 위함
 
#RUN pip install --no-cache-dir --upgrade -r /codes/requirements.txt
RUN pip install git+https://github.com/rlaehgus97/fishmlserv.git@0.8/hub

RUN chmod +x /codes/get-model-path.py
RUN chmod +x /codes/predict.py
RUN ln -s /codes/get-model-path.py /usr/local/bin/get-model-path
RUN ln -s /codes/predict.py /usr/local/bin/predict
#위의 4줄은 왜??

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
