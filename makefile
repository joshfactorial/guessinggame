readme.md: guessinggame.sh
	echo "Project name: guessinggame" > readme.md
	date >> readme.md
	echo -n "Lines in the code: " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
	echo >> readme.md

clean:
	rm readme.md
