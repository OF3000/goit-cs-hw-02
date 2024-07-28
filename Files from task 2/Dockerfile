FROM python:3.12

ENV APP_HOME /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt \
    && rm -rf /root/.cache


EXPOSE 8000

ENTRYPOINT ["python","main.py"]