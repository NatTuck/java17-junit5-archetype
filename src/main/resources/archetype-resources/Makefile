
all:
	true "Checking for 'target' directory."
	true "Remember to run 'mvn clean' before tarring up your solution."
	bash -c 'if [[ -e "./target" ]]; then rm -rf target; exit 1; fi'
	mvn compile -q -B
	mvn test -q -B
	mvn checkstyle:checkstyle -q -B

clean:
	mvn clean

.PHONY: all clean	
