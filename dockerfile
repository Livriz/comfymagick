FROM ghcr.io/lecode-official/comfyui:latest

# Install ImageMagick and dependencies
RUN apt-get update && \
    apt-get install -y imagemagick libmagickwand-dev && \
    apt-get clean

# Clone the MagickWand extension into the custom_nodes directory
WORKDIR /app/custom_nodes
RUN git clone https://github.com/Fannovel16/ComfyUI-MagickWand.git

# Install Python dependencies for MagickWand
WORKDIR /app/custom_nodes/ComfyUI-MagickWand
RUN pip install -r requirements.txt
