#!/bin/bash

# Initialize and update submodules
git submodule update --init --recursive

# Pull latest changes for each submodule
git submodule foreach git pull origin main

# Commit changes to the main repository
git add .
git commit -m "Update submodules to latest commits"
git push origin main