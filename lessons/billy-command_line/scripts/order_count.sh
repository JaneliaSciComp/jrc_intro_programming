#!/bin/bash

grep "$1" orders.tsv | cut -f2 | paste -sd+ - | bc
