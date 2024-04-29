FROM continuumio/miniconda3

# Set working directory
WORKDIR /app

# Add docker-entrypoint.sh script
ADD docker-entrypoint.sh ./
RUN chmod 777 ./docker-entrypoint.sh

# Install system dependencies
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y \
    git build-essential cmake pigz \
    libsm6 libxrender-dev libxext6 ffmpeg \
    unzip

# Create conda environment
RUN conda create -n env python=3.9
ENV PATH /opt/conda/envs/env/bin:$PATH

# Copy environment.yml and create conda environment
ADD environment.yml ./
RUN conda env create -f environment.yml

# Activate conda environment
RUN echo "source activate env" > ~/.bashrc

# Install OpenCV with the required version
RUN python -m pip uninstall -y opencv-python && \
    python -m pip install opencv-python==4.5.5.64

# Create directory for TotalSegmentator model weights
RUN mkdir -p /app/totalsegmentator/nnunet/results/nnUNet/3d_fullres/

# Download and unzip model weights
ENV WEIGHTS_DIR="/app/totalsegmentator/nnunet/results/nnUNet/3d_fullres/"
ADD download_and_unzip_weights.sh ./
RUN chmod +x download_and_unzip_weights.sh
RUN ./download_and_unzip_weights.sh

# Set TOTALSEG_WEIGHTS_PATH environment variable
ENV TOTALSEG_WEIGHTS_PATH="/app/totalsegmentator/nnunet/results/"

# Set permissions
RUN chmod -R 777 /app/totalsegmentator

# Set working directory back to /app
WORKDIR /app

# Define default command to run when the container starts
CMD ["./docker-entrypoint.sh"]
