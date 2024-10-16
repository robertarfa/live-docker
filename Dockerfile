#imagem do dockerhub
FROM python:3.12.6-slim
#evitar rodar com usuário root
#ver usuários cat /etc/passwd

#para instalar global #pip install pipenv => para usar o django
#gerenciador de pacotes => npm
RUN pip install pipenv

#non-root user
RUN useradd -ms /bin/bash my-user
#define o usuário como padrão da imagem/container
USER my-user
# para manter o container rodando
# tail lê alguma coisa
# -f lê de forma infinita
# dev/null dispositivo linux nulo
#comando que será executado ao iniciar o container
CMD ["tail", "-f", "/dev/null"]
# rodar docker build -t my-app .
#docker image ls
#docker image ls | grep my-app
#docker exec -t 80c bash => pode utilizar python no terminal

# para criar um volume - pwd pegar a pasta atual e sincronizar arquivos
#docker run -v $(pwd):/app my-app => no git bash

#cd app
#criar variável local export PIPENV_VENV_IN_PROJECT=1
#pipenv shell e depois ls -la para ver o .venv
#pip install django

#pipenv shell => pra rodar o virtual
#django-admin startproject videos

#docker stop 80c => 3 primeiros caracteres imagem

#container com porta
#docker run -v $(pwd):/app -p 8000:8000 my-app-python

#para zerar o ip
#python manage.py runserver 0.0.0.0:8000

#banco de dados
#docker run -e POSTGRES_PASSWORD=root -e POSTGRES_DB=django postgres
#entrar no console
#psql -U postgres
#lista da aplicação
#\l

#biblioteca para 
#pipenv install psycopg2-binary