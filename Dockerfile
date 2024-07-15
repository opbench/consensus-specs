FROM python:3.10-slim

# set the working directory
WORKDIR /code

# copy
COPY ./ ./

# install dependencies
RUN pip install pipenv
RUN pipenv install -e .
RUN pipenv install graphviz
RUN mkdir build

# copy the src to the folder
CMD [ "tail", "-f", "/dev/null"]