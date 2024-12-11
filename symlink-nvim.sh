#!/bin/bash

# Script to symlink Neovim config from ~/Rococcoon/nvim-chad to ~/.config/nvim

# Define source and target paths
SOURCE_DIR="$HOME/Rococcoon/nvim-chad"
TARGET_DIR="$HOME/.config/nvim"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source configuration directory $SOURCE_DIR does not exist."
        exit 1
        fi

        # Remove existing target directory if it exists
        if [ -d "$TARGET_DIR" ]; then
            echo "Removing existing Neovim configuration at $TARGET_DIR"
                rm -rf "$TARGET_DIR"
                fi

                # Create a symbolic link to your Neovim configuration
                echo "Creating symbolic link from $SOURCE_DIR to $TARGET_DIR"
                ln -s "$SOURCE_DIR" "$TARGET_DIR"

                # Confirm the symlink creation
                if [ -L "$TARGET_DIR" ]; then
                    echo "Successfully symlinked $SOURCE_DIR to $TARGET_DIR"
                    else
                        echo "Failed to create the symbolic link."
                            exit 1
                            fi

