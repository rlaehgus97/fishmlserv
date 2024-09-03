#FROM python:3.8
FROM datamario24/python311scikitlearn-fastapi:1.0.0

WORKDIR /codes

#COPY . /codes/
COPY src/fishmlserv/main.py /codes/
#COPY ./requirements.txt /codes/requirements.txt

# 여러번 실행 가능
#RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir git+https://github.com/rlaehgus97/fishmlserv.git@0.8/hub

# 한 번 만 실행가능, 서버 실행
#CMD ["uvicorn", "src.fishmlserv.main:app", "--host", "0.0.0.0", "--port", "8080"]
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
