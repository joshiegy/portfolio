#!/bin/bash
mogrify -format jpeg -path images/thumbs -thumbnail 512x512 images/fulls/*
find ./images -exec rename 's/(.*)\/([^\/]*)/\/\L/' {} \;
