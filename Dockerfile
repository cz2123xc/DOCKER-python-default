FROM python:3


WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python" ]


#$ docker build -t cz2123zc/python-normal:latest .
#$ docker run -it --rm --name my-running-app my-python-app




