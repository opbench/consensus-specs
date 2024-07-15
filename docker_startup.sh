# proxy settings
HTTP_PROXY='' HTTPS_PROXY='' docker build -t consensus-test .
docker run -d --name consensus-specs -v /${PWD}:/code consensus-test
