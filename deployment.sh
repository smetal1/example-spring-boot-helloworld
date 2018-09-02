docker login -u saurav705555 -p sauravkumar21
docker build . -t saurav705555/sampleapp:latest
docker push saurav705555/sampleapp:latest
echo $PATH
oc tag --source=docker saurav705555/sampleapp:latest sampleapp:latest
