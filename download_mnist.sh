#!/bin/bash

# Script to download MNIST dataset

echo "Downloading MNIST dataset..."
echo "=============================="

# Create data directory
mkdir -p data

# Download training data
echo "Downloading training images..."
curl -L -o data/train-images-idx3-ubyte.gz https://github.com/fgnt/mnist/raw/master/train-images-idx3-ubyte.gz

echo "Downloading training labels..."
curl -L -o data/train-labels-idx1-ubyte.gz https://github.com/fgnt/mnist/raw/master/train-labels-idx1-ubyte.gz

# Download test data
echo "Downloading test images..."
curl -L -o data/t10k-images-idx3-ubyte.gz https://github.com/fgnt/mnist/raw/master/t10k-images-idx3-ubyte.gz

echo "Downloading test labels..."
curl -L -o data/t10k-labels-idx1-ubyte.gz https://github.com/fgnt/mnist/raw/master/t10k-labels-idx1-ubyte.gz

echo ""
echo "Verifying downloads..."
file data/*.gz

echo ""
echo "Download complete! Files saved to 'data/' directory."
echo "You can now run: cargo run --release"
