#!/bin/bash

rsync -r --progress ../cv/marincv.pdf ./content/about/
hugo
