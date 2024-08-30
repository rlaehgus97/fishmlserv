#FROM python:3.8
FROM python:3.8.19-bullseye

WORKDIR /codes

COPY . /codes/

#COPY ./requirements.txt /codes/requirements.txt
 
RUN pip install --no-cache-dir --upgrade -r /codes/requirements.txt

CMD ["uvicorn", "src.fishmlserv.main:app", "--host", "0.0.0.0", "--port", "8765"]
