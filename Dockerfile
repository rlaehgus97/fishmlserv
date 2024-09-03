#FROM python:3.8
FROM datamario24/python311scikitlearn-fastapi:1.0.0

WORKDIR /codes

#COPY . /codes/
COPY src/fishmlserv/main.py /codes/
#COPY ./requirements.txt /codes/requirements.txt
 
#RUN pip install --no-cache-dir --upgrade -r /codes/requirements.txt
RUN pip install git+https://github.com/rlaehgus97/fishmlserv.git@0.8/hub

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
