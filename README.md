> This is a demo CI project, which would no longer maintain  
> You can follow [Todo List](https://github.com/gaozhidf/demoCI/wiki) to create the project


# demoCI
[![Build Status](https://travis-ci.org/gaozhidf/demoCI.svg?branch=master)](https://travis-ci.org/gaozhidf/demoCI)


## Workflow
```
   Git Hub                                      Travis CI Jobs                           Docker Hub
https://github.com/gaozhidf/demoCI           https://travis-ci.org/gaozhidf/demoCI    https://hub.docker.com/u/gaozhidf/
+-------------+                      +-----------------------------------+            +--------------------------------+
|             |    toggle CI/CD jobs |                                   +------------> gaozhidf/demo_ci               |
| Git Repo    +---------------------->  1. Stage 1:                      | push images|                                |
|             |                      |     a. mvn install                |            | gaozhidf/demo_ci_static_server |
+-----+-------+                      |     b. key decrypt                |            |                                |
      ^                              |  2. Stage 2:                      |            +----------------+---------------+
      | git commit && push           |     a. build docker images        |                             |
      |                              |     b. test docker containers     |                             | pull docker images
+-----+-------+                      |  3. Stage 3:                      |                             |
|             |                      |     a. push images to docker repo |                             |
| Source Codes| Local PC             |  4. Stage 4:                      | ansible                     |
|             |                      |     a. deploy to remote server    | deploy     +----------------v----------------+
+-------------+                      |                                   +------------>                                 |
                                     +-----------------------------------+            |    Remote Server                |
                                                                                      |                                 |
                                                                                      | 1. setup the static server for  |
                                                                                      |    static resources             |
                                                                                      | 2. setup the demo server        |
                                                                                      |                                 |
                                                                                      +---------------------------------+

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

## 4. Demo Online
[http://gaozhidf.ml:10080](http://gaozhidf.ml:10080)
