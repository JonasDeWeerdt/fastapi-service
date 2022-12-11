FROM python:3.8
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
COPY ./app /code/app
RUN pip install -r  requirements.txt
CMD ["uvicorn", "name_api:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
