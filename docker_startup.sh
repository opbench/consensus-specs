# proxy settings
HTTP_PROXY="" HTTPS_PROXY="" DOCKER_BUILDKIT=1 docker build -t consensus-test --progress=plain  . 
# docker run -d --name consensus-specs -v /${PWD}:/code consensus-test
