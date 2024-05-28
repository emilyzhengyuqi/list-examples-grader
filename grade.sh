CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

if [[ -f ListExamples.java]]
then 
    echo "ListExamples file found!!!"
else 
    echo "ListExamples file not found..."
    echo "Grade: 0"
    exit
fi
# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

## step 3: 
cp TestListExample.java student-submission/ListExamples.java grading-area 
cp -r lib grading-area
# Then, add here code to compile and run, and do any post-processing of the
# tests
cd grading-area 
javac -cp $CPATH TestListExamples.java ListExamples.java
echo "the exit code is $?"

##check if the exit code is zero, if so, move on to next step, if not, prnt out the error message
## javajunit TestListExamples > newfile.txt| grep"Ok"

