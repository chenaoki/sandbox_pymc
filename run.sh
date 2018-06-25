!/bin/sh
docker run -d --rm --runtime=nvidia -v `pwd`:/mnt/notebook -p $1:8888 chenaoki/sandbox_pymc:latest
