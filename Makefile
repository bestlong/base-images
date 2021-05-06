build-test:
  docker build -f ./grails/Dockerfile -t bestlong/base-image-grails:test .

build-test-nc:
  docker build -f ./grails/Dockerfile -t bestlong/base-image-grails:test --no-cache .

build-test-pnc:
  docker build -f ./grails/Dockerfile -t bestlong/base-image-grails:test --no-cache --pull .

tag-grails: build-test
  docker tag bestlong/base-image-grails:test bestlong/base-image-grails:latest

push-grails: tag-grails
  docker push bestlong/base-image-grails:latest
