FROM python:3.11.7

RUN pip install pandas

WORKDIR /app
# Copy the current directory contents into the container at /app

COPY pipeline.py pipeline.py

ENTRYPOINT ["python", "pipeline.py"]
# Run pipeline.py when the container launches