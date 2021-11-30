FROM python:3-alpine

ENV FLASK_APP=app
ENV FLASK_ENV=development

WORKDIR /project
COPY requirements.txt /project/
RUN python3 -m pip install --no-cache-dir -r /project/requirements.txt --ignore-installed --user

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
