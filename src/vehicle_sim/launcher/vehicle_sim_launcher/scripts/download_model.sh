#!/bin/sh

mkdir -p ~/.gazebo
echo "Download generic gazebo models"

MODELS_PATH="$HOME/.gazebo/models"
MODELS_REPO="https://github.com/osrf/gazebo_models"

# Clone Repo if it does not exist, else pull latest changes
git clone "$MODELS_REPO" "$MODELS_PATH" 2> /dev/null || git -C "$MODELS_PATH" pull

echo "Install osrf_citysim models"
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cp -rn $SCRIPT_DIR/../../../worlds/external/osrf_citysim/models/* "$MODELS_PATH"

echo "Install card_demo models"
cp -rn $SCRIPT_DIR/../../../worlds/external/car_demo/car_demo/models/* "$MODELS_PATH"