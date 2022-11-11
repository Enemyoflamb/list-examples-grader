# Create your grading script here

set -e

rm -rf student-submission
git clone $1 student-submission
CPATH=.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar
cp -R ./lib ./student-submission
cp *.java ./student-submission
cd student-submission
javac -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" *.java
java -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" org.junit.runner.JUnitCore TestListExamples