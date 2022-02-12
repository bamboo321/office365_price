FROM continuumio/anaconda3:latest

RUN pip install --upgrade pip && \
pip install \
requests \
beautifulsoup4 \
CurrencyConverter

CMD conda install jupyter -y --quiet && \
    mkdir -p /opt/notebooks && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root

WORKDIR /app