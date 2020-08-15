FROM docker:19.03
WORKDIR /usr/src/app

COPY . /usr/src/app

CMD set -x; docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v "$(pwd)/foo:/foo" docker:19.03
