# demoCI
[![Build Status](https://travis-ci.org/gaozhidf/demoCI.svg?branch=master)](https://travis-ci.org/gaozhidf/demoCI)


## Workflow
```
   Git Hub                                      Travis CI Jobs

+-------------+                      +-----------------------------------+
|             |    toggle CI/CD jobs |                                   |
| Git Repo    +---------------------->  1. Stage 1:                      |
|             |                      |     a. mvn install                |
+-----+-------+                      |     b. key decrypt                |
      ^                              |  2. Stage 2:                      |
      | git commit && push           |     a. build docker images        |
      |                              |     b. test docker containers     |
+-----+-------+                      |  3. Stage 3:                      |
|             |                      |     a. push images to docker repo |
| Source Codes| Local PC             |  4. Stage 4:                      |
|             |                      |     a. deploy to remote server    |
+-------------+                      |                                   |
                                     +----------+------------------------+
                                                |
                                                | deploy docker containers
                                                |
                                                v
                                       +--------+------------+
                                       |                     |
                                       |     Remote Server   |
                                       |                     |
                                       |                     |
                                       +---------------------+

```

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