FROM python:latest

# setting working directory
workdir /app

# install dependencies
copy ./requirements.txt /app
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy the scripts to the folder
copy . /app

# start the server
CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "80", "--reload", "--reload-include" "*"]
