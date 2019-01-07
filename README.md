# scraper-centos-docker

create docker image with oracle jdk and run a jbrowserdriver test

## build Docker test image

docker build --no-cache -t scraper-test-centos .

## run Docker image

docker run -it scraper-test-centos

## run test in container

git clone https://github.com/smatei/scraper-centos-docker.git

cd scraper-centos-docker/

mvn compile

mvn exec:java

## Output will be:

> Testing domain 971menu.com
> 
> Testing domain anaheimwhitehousewedding.com
> 
> Testing domain wvtailgatecentral.com
> 
> Testing domain 8thonglor.com
> 
> Testing domain wmfilms.net
> 
> Testing domain allaboutgreatestates.com
> 
> Testing domain firabackpackers.com
> 
> Testing domain ackerstone.com
> 
> Testing domain cooldad.ca
> 
> Testing domain zutek.com
> 
> Testing domain familyfriends.uk.com
> 
> SLF4J: Failed to load class "org.slf4j.impl.StaticLoggerBinder".
> 
> SLF4J: Defaulting to no-operation (NOP) logger implementation
> 
> SLF4J: See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.
> 
> response for http://firabackpackers.com: 200
> 
> response for http://zutek.com: 200
> 
> response for http://ackerstone.com: 200
> 
> response for http://wmfilms.net: 200
> 
> response for http://cooldad.ca: 200
> 
> response for http://971menu.com: 200
> 
> response for http://anaheimwhitehousewedding.com: 200
> 
> response for http://8thonglor.com: 200
> 
> response for http://familyfriends.uk.com: 200
> 
> response for http://allaboutgreatestates.com: 200
> 
> response for http://wvtailgatecentral.com: 200
> 
