# using python as the base image
FROM python:latest

# set the work directory
WORKDIR /app

# copy the requirements file
COPY requirements.txt requirements.txt

# install the requirements
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ADD . /app

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]