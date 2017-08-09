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
