docker build -t test .
docker run -d --name consensus-specs -v /${PWD}:/code test
