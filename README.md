# nexpay-deployment.

clone \
nexapay-bank-backend \
nexapay-user-backend \
nexapay-frontend

run \
docker-compose down -v --remove-orphans \
docker-compose up --build -d

[//]: # (build and run mysql)
docker buildx build --platform linux/amd64 -t idp29/mysql:latest mysql --push

[//]: # (build and run bank backend)
docker buildx build --platform linux/amd64 -t idp29/bank-backend-image:latest -f nexapay-bank-backend/Dockerfile nexapay-bank-backend --push

[//]: # (build and run user backend)
docker buildx build --platform linux/amd64 -t idp29/user-backend-image:latest -f nexapay-user-backend/Dockerfile nexapay-user-backend --push

[//]: # (build and run frontend)
docker buildx build --platform linux/amd64 -t idp29/frontend-image:latest -f nexapay-frontend/Dockerfile nexapay-frontend --push
