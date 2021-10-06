#https://hub.docker.com/r/airbyte/destination-bigquery
cd ../../..
./gradlew :airbyte-integrations:connectors:destination-bigquery:build
cd -
IMG=mohammadbolt/airbyte-bigquery:1.0.20211006-v2
docker build . -t $IMG
docker push $IMG
