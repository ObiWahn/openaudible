.PHONY: package compile

compile:
	mvn compile

package:
	mvn package

target/openaudible-jar-with-dependencies.jar:
	mvn package -DskipTests

run-linux: target/openaudible-jar-with-dependencies.jar
	java -Dfile.encoding=UTF-8 -ea -cp "target/openaudible-jar-with-dependencies.jar:swt/org.eclipse.swt.gtk.linux.x86_64-4.6.jar" org.openaudible.desktop.Application

#mvn package -Dmaven.test.skip=true
