FROM python:3.10

# set the working directory
WORKDIR /code

# copy
COPY ./ ./

# install dependencies
RUN pip install pipenv
RUN pipenv install -e .
RUN pipenv install graphviz

# clone build/lib
RUN mkdir build
RUN git config http.sslVerify "false"
RUN git clone https://github.com/marcoh00/eth2sim.git build/lib

# Extract the Ethereum 2.0 specification python code into the build/lib directory
RUN python setup.py pyspec
RUN python setup.py build_py

CMD ["python", "build/lib/run_official_sim.py", "0"]

# copy the src to the folder
# CMD [ "tail", "-f", "/dev/null"]