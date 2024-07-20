all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "## Date and Time" >> README.md
	date >> README.md
	echo "\n## Number of lines in guessinggame.sh" >> README.md
	wc -l < guessinggame.sh >> README.md

