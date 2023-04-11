# recipe-app-api
Recipe API project

# Docker command that used in project
sudo docker-compose run web django-admin startproject app .
docker-compose run --rm app sh -c "python manage.py collectstatic"
docker compose up

