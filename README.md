# recipe-app-api
Recipe API project

# Docker command that used in project
sudo docker-compose run web django-admin startproject app .
docker-compose run --rm web  sh -c "python manage.py collectstatic"
sudo docker-compose run --rm web sh -c "python manage.py test"
docker compose up

