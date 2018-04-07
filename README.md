# demoCI
[![Build Status](https://travis-ci.org/gaozhidf/demoCI.svg?branch=master)](https://travis-ci.org/gaozhidf/demoCI)

## 1. Test with docker
#### Setup services
```shell
docker-compose up
```

#### Open the browser http://localhost(http://localhost:80)

## 2. Normal Usage
#### Install
```shell
# linux
./mvnw install

# windows
mvnw.cmd install
```

#### Build
```shell
# linux
./mvnw package

# windows
mvnw.cmd package
```

#### Run
```shell
# linux
./mvnw spring-boot:run

# windows
mvnw.cmd spring-boot:run
```

## 3. CI Job
[https://travis-ci.org/gaozhidf/demoCI](https://travis-ci.org/gaozhidf/demoCI)