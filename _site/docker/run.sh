#!/bin/bash -ex

docker run -v $(realpath .):/home/jekyll -p 4001:4000 -it github-jekyll /bin/bash
