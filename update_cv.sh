#!/bin/bash

rsync -r --progress ../cv/GMarin_CV.pdf ./content/about/
hugo
