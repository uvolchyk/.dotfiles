#!/bin/zsh

# Function to display usage
usage() {
    echo "Usage: $0 -p project_name -s scheme_name -n simulator_name -o os_version [-c configuration]"
    echo "  -p project_name      Name of the Xcode project (without .xcodeproj extension)"
    echo "  -s scheme_name       Name of the scheme to build"
    echo "  -n simulator_name    Name of the simulator (e.g., 'iPhone 14')"
    echo "  -o os_version        OS version of the simulator (e.g., '16.0')"
    echo "  -c configuration     Build configuration (e.g., 'Debug', 'Release'). Default is 'Debug'."
    exit 1
}

# Default configuration
CONFIGURATION="Debug"

# Parse command line arguments
while getopts "p:s:n:o:c:" opt; do
    case $opt in
        p) PROJECT_NAME="$OPTARG" ;;
        s) SCHEME_NAME="$OPTARG" ;;
        n) SIMULATOR_NAME="$OPTARG" ;;
        o) OS_VERSION="$OPTARG" ;;
        c) CONFIGURATION="$OPTARG" ;;
        *) usage ;;
    esac
done

# Check if all required parameters are provided
if [[ -z "$PROJECT_NAME" || -z "$SCHEME_NAME" || -z "$SIMULATOR_NAME" || -z "$OS_VERSION" ]]; then
    usage
fi

# Function to clean Core Simulator folder
clean_core_simulator() {
    echo "Cleaning Core Simulator folder..."
    rm -rf ~/Library/Developer/CoreSimulator/Devices/*
}

# Clean the Core Simulator folder
# clean_core_simulator

# Navigate to the project directory
cd "$PROJECT_NAME" || { echo "Project directory not found!"; exit 1; }

# List available simulators and find the identifier for the specified simulator
SIMULATOR_ID=$(xcrun simctl list devices | grep "$SIMULATOR_NAME" | grep -oE "[A-F0-9-]{36}")

echo $SIMULATOR_ID $SIMULATOR_NAME $OS_VERSION

# Check if SIMULATOR_ID is not empty
if [[ -z "$SIMULATOR_ID" ]]; then
  echo "Simulator not found!"
  exit 1
fi

# Boot the simulator
xcrun simctl boot "$SIMULATOR_ID"

# Clean the project
xcodebuild clean -workspace "$PROJECT_NAME.xcworkspace" -scheme "$SCHEME_NAME" -configuration "$CONFIGURATION"

# Build the project
xcodebuild -project "$PROJECT_NAME.xcodeproj" -scheme "$SCHEME_NAME" -destination "id=$SIMULATOR_ID" -configuration "$CONFIGURATION" build

# Find the built .app
APP_PATH=$(find ~/Library/Developer/Xcode/DerivedData -name "*.app" -print -quit)

# Install the app on the simulator
xcrun simctl install booted "$APP_PATH"

# Launch the app on the simulator
BUNDLE_ID=$(defaults read "$APP_PATH/Info.plist" CFBundleIdentifier)
xcrun simctl launch booted "$BUNDLE_ID"

# xcrun simctl install booted "/Users/uladzislau/Library/Developer/Xcode/DerivedData/portfolio-dgepmkrvzxkbsgfececlvvdmjdvk/Build/Products/Debug-iphonesimulator/Portfolio.app"
# xcrun simctl launch booted com.uvolchyk.portfolio