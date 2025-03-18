# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Define environment variable
ENV FLASK_APP=app.py

# Expose the application's port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
