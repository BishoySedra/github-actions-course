#!/bin/bash

# src/test.sh
EXPECTED_OUTPUT="Hello, Test!"

# Run the script and capture the output
OUTPUT=$(node -e "console.log(require('./src/app.js')('Test'))")

# Check if the output matches the expected output
if [ "$OUTPUT" == "$EXPECTED_OUTPUT" ]; then
  echo "Test passed!"
else
  echo "Test failed! Expected '$EXPECTED_OUTPUT' but got '$OUTPUT'."
  exit 1
fi