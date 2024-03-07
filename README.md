# ailia TRAINER

ax Inc. machine learning training platform.

It currently supports the training of object detection models **YOLOX and YOLOv4**.

Trainings can be done on **custom datasets** as well as already available datasets from [Open Images Dataset](https://storage.googleapis.com/openimages/web/index.html).

ailia TRAINER also offers a feature of **auto-annotation** using [Detic](https://github.com/facebookresearch/Detic) for automatically generating annotations.

All the features are described in great details in the blog posts mentionned in the following section.

## Getting started

We published a blog post below as an introduction to the concept of model training for users who are not familiar with the fundamental concepts.

**[ailia TRAINER — Introduction](https://medium.com/axinc-ai/ailia-trainer-introduction-96e7f320a189)**

The second blog post below is a manual on how to setup and how to use the training platform.

**[ailia TRAINER — Getting Started](https://medium.com/axinc-ai/ailia-trainer-getting-started-fd5a501162bc)**

## Prerequisites

ailia TRAINER is compatible with Linux and Windows platforms.

:warning: For Windows WSL2 users make sure to check the `Environment variables` section.

The following prerequisites are required to run ailia Trainer:

- Docker, also tested with Docker Desktop on Windows platform
- NVIDIA GPU drivers for training on GPU. Training will be performed on CPU otherwise, if supported depending on the model type.

## git LFS

:warning: **This repository is using [Git LFS](https://git-lfs.com/), you need to checkout large files as well using `git lfs pull`**

## Build and run the containers

- Pull the container images

```bash
./docker-pull.sh
```

- Start the containers

```bash
docker compose create
docker compose start
```

Then open your browser and go to:

- `http://localhost:19998` to access the ailia Trainer YOLOv4
- `http://localhost:19999` to access the ailia Trainer YOLOX

By using the command below you can watch all the logs coming from the containers

## Environment variables

Several environment variables can be commented/uncommented from the [docker-compose.yaml](./docker-compose.yaml) file to enforce some specific configuration changes.

- `FORCE_CPU`: force the use of cuda/cpu device
- `USE_WSL2`: If you are using docker on Windows wsl2, be sure the environment variable `USE_WSL2` is set to `1` as a workaround to avoid network error while downloading dataset from internet.

## Model weights

The weights are included in the repository and stored using [Git LFS](https://git-lfs.com/), but for reference the sources can be found below.

### YOLOv4

- [yolov4.conv.137.pth](https://drive.google.com/open?id=1fcbR0bWzYfIEdLJPzOsn4R5mlvR6IQyA)
- [darknet-yolov4.weights](https://drive.google.com/open?id=1cewMfusmPjYWbrnuJRuKhPMwRe_b9PaT)

### YOLOX

- [yolox_nano.pth](https://github.com/Megvii-BaseDetection/YOLOX/releases/download/0.1.1rc0/yolox_nano.pth)
- [yolox_tiny.pth](https://github.com/Megvii-BaseDetection/YOLOX/releases/download/0.1.1rc0/yolox_tiny.pth)
- [yolox_s.pth](https://github.com/Megvii-BaseDetection/YOLOX/releases/download/0.1.1rc0/yolox_s.pth)
- [yolox_m.pth](https://github.com/Megvii-BaseDetection/YOLOX/releases/download/0.1.1rc0/yolox_m.pth)
- [yolox_l.pth](https://github.com/Megvii-BaseDetection/YOLOX/releases/download/0.1.1rc0/yolox_l.pth)
- [yolox_x.pth](https://github.com/Megvii-BaseDetection/YOLOX/releases/download/0.1.1rc0/yolox_x.pth)

### Detic

- [Detic_LCOCOI21k_CLIP_SwinB_896b32_4x_ft4x_max-size.pth](https://dl.fbaipublicfiles.com/detic/Detic_LCOCOI21k_CLIP_SwinB_896b32_4x_ft4x_max-size.pth)
- [ViT-B-32.pt](https://openaipublic.azureedge.net/clip/models/40d365715913c9da98579312b702a82c18be219cc2a73407c4526f58eba950af/ViT-B-32.pt)
- [All tokenizers models](https://github.com/openai/CLIP/blob/a1d071733d7111c9c014f024669f959182114e33/clip/clip.py#L30-L40)
