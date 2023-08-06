export APP_NS=example
export APP_NAME=demo

mvn archetype:generate -DarchetypeGroupId=quest.homework.archetypes \
                       -DarchetypeArtifactId=java17-junit5-archetype \
                       -DarchetypeVersion=1.0.0-SNAPSHOT \
                       -Dversion=1.0.0-SNAPSHOT \
                       -DinteractiveMode=false \
                       -DgroupId=$APP_NS \
                       -DartifactId=$APP_NAME
