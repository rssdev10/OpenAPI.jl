echo "stopping swagger-petstore server"
docker stop swagger-petstore
docker rm swagger-petstore 2>/dev/null
echo "stopped swagger-petstore server"