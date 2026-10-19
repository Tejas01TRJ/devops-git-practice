#!/bin/bash

RELEASE_DIR="/opt/devops-git-practice/releases/1.1.0"

echo "Checking deployment..."

if [ ! -d "$RELEASE_DIR" ]; then
    echo "ERROR: Release directory not found"
    exit 1
fi

if [ ! -f "$RELEASE_DIR/app.txt" ]; then
    echo "ERROR: app.txt is missing"
    exit 1
fi

if [ ! -f "$RELEASE_DIR/config/app.conf" ]; then
    echo "ERROR: app.conf is missing"
    exit 1
fi

if [ ! -r "$RELEASE_DIR/config/app.conf" ]; then
    echo "ERROR: app.conf is not readable"
    exit 1
fi

echo "PASS: Release directory exists"
echo "PASS: Application file exists"
echo "PASS: Configuration file exists and is readable"
echo "Deployment verification successful"
