FROM python:3.9-slim

copy . /app
workdir /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "80"]
