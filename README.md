makenotes.sh
Small script to auto generate notes for class or work now that I'm out of college.

I'm going to make this better. Some things to make it better:
	1. Remove the opt identifiers
		* The command should be `mn <subject> <title>`
	2. There should be flags to sync notes to github, `mn -sync`/`mn -s`
	3. After file is created, it should be opened in Vim. 
	4. Use 'getopts' instead of checking for options manually.
	5. Method for browsing notes, maybe `mn -b(rowse)` should open
		`vim <directory>` and browse the files using Vims file
		browser.
	6. Jot:
		Create a quick note. Should create the notes, make the header in the notes file
		then echo the passed in string into the created file.
		`mn -j "Just jotting something down."` should create `$DIR/jots/jot-$DATE`

Options:
	s: Subject - This should be a primary subject and directory, ex. ~/Notes/<subject>/
	t: Topic - Initial title of the notes, ex. ~/Notes/<subject>/<topic>-$DATE
	S: Sync - Synch notes to github, should automatically commit, push.
	d: Directory - Maybe show current notes
	b: Browse Directory.
	f: Find, search in notes, should return line number and line text, `grep -rn '<terms>'`
	j: Quick Jotting something down
