FROM python:3.10

ENV HTTP_PROXY=""
ENV HTTPS_PROXY=""
ENV NO_PROXY=""
# set the working directory
WORKDIR /code

# COPY ./requirements.txt ./requirements.txt
# RUN pip install --no-cache-dir -r /requirements.txt

# copy
COPY ./ ./

# install dependencies
RUN pip install pipenv
RUN pipenv install -e .
RUN pipenv install graphviz


# clone build/lib
RUN mkdir build
RUN git -c http.sslVerify=false clone https://github.com/marcoh00/eth2sim.git build/lib

# Extract the Ethereum 2.0 specification python code into the build/lib directory
RUN python setup.py pyspec
RUN python setup.py build_py

# copy the src to the folder
CMD [ "tail", "-f", "/dev/null"]
# CMD ["python", "build/lib/run_official_sim.py", "0"]