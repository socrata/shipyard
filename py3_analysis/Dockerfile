FROM socrata/python3

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y libblas-dev liblapack-dev

RUN pip install numpy==1.11.0 && \
    pip install scipy==0.17.1 && \
    pip install scikit-learn==0.17.1

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/py3_analysis=""
