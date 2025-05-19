# nexpay-deployment.

clone \
nexapay-bank-backend \
nexapay-user-backend \
nexapay-frontend

run \
docker-compose down -v --remove-orphans \
docker-compose up --build -d