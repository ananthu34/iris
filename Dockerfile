FROM ubuntu

FROM python

COPY ./requirements.txt /pythonapp/requirements.txt

WORKDIR /pythonapp

COPY . /pythonapp

EXPOSE 8501

RUN pip install -r requirements.txt

CMD python /pythonapp/model.py 
