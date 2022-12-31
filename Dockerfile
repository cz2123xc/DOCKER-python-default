FROM python:3


WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 자동종료 방지 설정 tail -f /dev/null
CMD ["tail", "-f", "/dev/null"]

#$ docker build -t cz2123zc/python-normal:latest .
#$ docker run -it --rm --name my-running-py cz2123zc/python-normal
#$ docker exec -it my-running-py /bin/bash
#$ docker push cz2123zc/python-normal:latest
#$ docker attach my-running-py




