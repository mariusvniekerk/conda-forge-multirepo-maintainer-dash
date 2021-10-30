#!/bin/bash
conda-lock --mamba --file conda-base.yaml --filename-template 'base-{platform}.lock' --platform linux-64 --check-input-hash
conda-lock --mamba --file environment.yaml --filename-template 'env-{platform}.lock' --platform linux-64 --check-input-hash
