#!/bin/bash
echo "🧹 Cleaning Flutter build..."
flutter clean

echo "📦 Getting packages FIRST (required for pods)..."
flutter pub get

echo "🗑️ Removing iOS build artifacts..."
cd ios
rm -rf Pods Podfile.lock .symlinks
rm -rf ~/Library/Developer/Xcode/DerivedData/*

echo "🔄 Reinstalling Pods..."
pod deintegrate
pod cache clean --all
pod install --repo-update

cd ..

echo "✅ Cleanup complete! Ready for fresh debug."