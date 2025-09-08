# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy your files into container
COPY toutatis ./toutatis
COPY setup.py .

# Install dependencies
RUN pip install --no-cache-dir setuptools

# Install toutatis
RUN python setup.py install

# By default, open shell, but you can override in Kestra bash task
CMD ["toutatis", "-h"]
