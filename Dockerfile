# Use an official Python runtime as the parent image
FROM python:3.9-slim
# Set the working directory in the container
WORKDIR /app
# Copy the current directory contents into the container
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# Command to run the uvicorn server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]