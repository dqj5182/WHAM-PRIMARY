#!/bin/bash

# Define the directory path
SEARCH_DIR="examples"

# Check if the directory exists
if [ ! -d "$SEARCH_DIR" ]; then
  echo "Error: Directory $SEARCH_DIR not found."
  exit 1
fi

echo "Starting processing for videos in $SEARCH_DIR..."

# Loop through all files in the directory
for video in "$SEARCH_DIR"/*; do
    # Check the file extension
    case "$video" in
        *.mp4|*.mov)
            echo "------------------------------------------------"
            echo "Processing: $video"
            python demo.py --video "$video" --visualize
            ;;
        *)
            # Ignore other file types
            continue
            ;;
    esac
done

echo "------------------------------------------------"
echo "Done!"