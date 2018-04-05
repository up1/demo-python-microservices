FROM python:3.6

WORKDIR /src
COPY ./requirements.txt /src/requirements.txt
RUN pip install -r requirements.txt
COPY . /src/

EXPOSE 8080
CMD ["python", "/src/app.py"]
