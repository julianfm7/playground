# Use the official JupyterLab base image
FROM jupyter/base-notebook:latest

# Set the working directory to /home/jovyan (default for Jupyter images)
WORKDIR /home/jovyan

# Copy your local requirements.txt into the container
COPY requirements.txt /home/jovyan/
COPY playground_notebook.ipynb /home/jovyan/

# Install any dependencies from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8888
EXPOSE 8888

# Set the default command to run JupyterLab
CMD ["start.sh", "jupyter", "lab", "--LabApp.token=''", "--LabApp.allow_origin='*'", "--LabApp.ip='0.0.0.0'"]
