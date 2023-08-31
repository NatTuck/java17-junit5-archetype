#export APP_NS=example
export APP_NS=$1
#export APP_NAME=demo
export APP_NAME=$2

# First "mvn install" the archetype.
# Then run this to generate a project in the current directory.

if [[ "x$APP_NS" == "x" ]] || [[ "x$APP_NAME" == "x" ]]; then
    echo "Usage:"
    echo "  $0 com.example.apps myapp"
    exit 1;
fi

mvn archetype:generate -DarchetypeGroupId=quest.homework.archetypes \
                       -DarchetypeArtifactId=java17-junit5-archetype \
                       -DarchetypeVersion=1.0.0-SNAPSHOT \
                       -Dversion=1.0.0-SNAPSHOT \
                       -DinteractiveMode=false \
                       -DgroupId=$APP_NS \
                       -DartifactId=$APP_NAME
