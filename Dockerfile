FROM python:3.7-alpine
WORKDIR /myapp
COPY Pipfile* ./
RUN pip install pipenv
RUN pipenv install --system --deploy
COPY app.py .
CMD ["python3", "app.py"]
