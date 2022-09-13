:README.md

README.md:
	echo "Title of the Project :" >> README.md
	echo guessinggame >> README.md
	echo "" >> README.md
	echo "Date and Time at which make was run" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Number of lines of code contained in guessinggame.sh" >> README.md
	wc -l guessinggame.sh | sed 's/[^0-9]*//g'  >> README.md

clean:
	rm -rf README.md
