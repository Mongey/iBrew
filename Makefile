all:
	@echo iBrew: Generating Smarter Protocol Description
	@echo "Smarter iKettle & Smarter Coffee protocol description\nGENERATED by iBrew (command: iBrew smarter)\nhttps://github.com/Tristan79/iBrew" > smarter.txt
	@date >> smarter.txt
	@python iBrew smarter >> smarter.txt
	@echo iBrew: Cleaning up
	@rm -f *.pyc

	
