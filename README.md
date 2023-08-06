
# Java 17 + JUnit 5 Quick Start Maven Archetype

Maven archetype to create a project configured for Java 11 and using JUnit 5.

Forked and tweaked from https://github.com/deangerber/java11-junit5-archetype

## Install archetype in local repository

Once you have cloned the repository locally. Just run the maven
command below to install the archetype.

``` shell
mvn install
```

## Example using the archetype

When the archetype has been installed locally you can create a project
using the command below. Just replace the parameter values with the
actual values you want to use.

``` shell
export PROJ_GROUP=demo
export PROJ_NAME=app
mvn archetype:generate -DarchetypeGroupId=quest.homework.archetypes \
                       -DarchetypeArtifactId=java17-junit5-archetype \
                       -DarchetypeVersion=1.0.0-SNAPSHOT \
                       -Dversion=1.0.0-SNAPSHOT \
                       -DinteractiveMode=false \
                       -DgroupId=$PROJ_GROUP \
                       -DartifactId=$PROJ_NAME
```


## Using maven in the resulting project:

To compile the app and run tests:


```shell
mvn verify
```

To run the app (must first be compiled):

```shell
mvn exec:java
```

To clean up build artifacts:

```shell
mvn clean
```

To build a jar:

```shell
mvn jar:jar
ls target/*.jar
```

To run the jar:

```
java -jar target/*.jar group
```


## References

 * [Maven](https://maven.apache.org)
 * [Maven Archetype](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html)
 * [JUnit 5](https://junit.org/junit5/)
 * [Hamcrest](http://hamcrest.org/JavaHamcrest/)

## License

Copyright © 2023 [NatTuck](https://github.com/NatTuck).

Copyright © 2022 [Dean Gerber](https://github.com/deangerber).

This project is MIT licensed.
