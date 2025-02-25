FROM python:3.9.8-slim-buster

WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 8501
COPY . .
ENTRYPOINT ["streamlit", "run"]
CMD ["code/app/app.py"]
