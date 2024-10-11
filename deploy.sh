#!/bin/bash

# Update CV
(cd ./resources/rendercv; rendercv render Gabriel_Marin_CV.yaml || exit 1)
cp "./resources/rendercv/rendercv_output/Gabriel_Marin_CV.pdf" "./content/about/"

# Update Hugo Site
hugo || exit 1
