#!/bin/bash

# Exit on error
set -e

echo "🚀 Starting build process..."

# Install dependencies
echo "📦 Installing dependencies..."
pnpm install

# Build the application
echo "🏗️ Building the application..."
pnpm build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build completed successfully!"
    echo "📦 Build artifacts are in the .next directory"
else
    echo "❌ Build failed!"
    exit 1
fi

# Optional: Run tests if they exist
echo "🧪 Running tests..."
pnpm test || true

# Optional: Run linting
echo "🔍 Running linting..."
pnpm lint || true

echo "✨ Build process completed!" 