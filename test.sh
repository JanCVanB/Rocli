#!/bin/bash

echo "Type checking the test..."
roc check test.roc 

echo "Running the test..."
roc test.roc 
