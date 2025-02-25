# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install Jupyter Lab
RUN pip install jupyterlab

# Make port 80 available to the world outside this container
EXPOSE 80

# Set the command to start Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=80", "--no-browser", "--allow-root"]
