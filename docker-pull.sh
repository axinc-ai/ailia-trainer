#!/bin/bash

images=("ailia-trainer-trainer-yolox" "ailia-trainer-trainer-yolov4" "ailia-trainer-custom-dataset-srv" "ailia-trainer-custom-dataset-srv-yolov4" "ailia-trainer-annotate-dataset-srv")

# Tag and push images
for image in "${images[@]}"; do
    docker pull "ghcr.io/axinc-ai/${image}:latest"
    docker tag "ghcr.io/axinc-ai/${image}" "${image}:latest"
done
