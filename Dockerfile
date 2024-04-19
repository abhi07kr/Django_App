#BASE image
FROM python:3.8.0

#Setup the workdir
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt .

#Install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#Copy everything else
COPY . .

#Exposing the port to listen to network calls
EXPOSE 8000

#Run the app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]