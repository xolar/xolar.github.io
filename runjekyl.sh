#!/bin/bash
jekyll serve -w > /dev/null "2>$1" &
