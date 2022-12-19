FROM python:3.7
RUN mkdir /app
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
EXPOSE 5050
COPY . .
CMD [ "python3", "convertor/convertor_service.py"]
