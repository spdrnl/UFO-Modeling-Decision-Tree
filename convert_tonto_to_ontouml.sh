#!/bin/bash

# Get the absolute path of the project root
PROJECT_ROOT=$(pwd)
SRC_DIR="$PROJECT_ROOT/modeling-case/tonto-examples"
DEST_DIR="$PROJECT_ROOT/modeling-case/ontouml-examples"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

echo "Starting conversion of Tonto files to OntoUML JSON..."
echo "Source: $SRC_DIR"
echo "Destination: $DEST_DIR"

# Iterate over all .tonto files in the source directory
for tonto_file in "$SRC_DIR"/*.tonto; do
    if [ -f "$tonto_file" ]; then
        filename=$(basename -- "$tonto_file")
        echo "-----------------------------------"
        echo "Converting: $filename"
        
        # Use npx to run tonto-cli generateSingle
        # Using full paths to avoid resolution issues
        npx tonto-cli generateSingle "$tonto_file" -d "$DEST_DIR"
    fi
done

echo "-----------------------------------"
echo "Conversion process finished."
echo "Note: If you see 'Neither file or directory provided', there may be an issue with tonto-cli path resolution."
echo "Files should be located in: $DEST_DIR"
