# Use the official Ubuntu base image
FROM python:3.12-alpine

RUN pip3 install fastapi uvicorn
WORKDIR /app
COPY ./main.py /app
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]