# A makefile is a handy place to stash your scripts!

# Needed to make cd command work
.ONESHELL:

# The dir the makefile is in
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))


default: help 


.PHONY: help
help: # Show help for each of the available commands
	@cd ${ROOT_DIR}
	@echo
	@grep -E '^[a-zA-Z0-9\. -]+:.*#'  Makefile | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#'| fold -w 60 -s)\n\n"; done
	@echo


.PHONY: dev-run-tests
dev-run-tests: # Run tests with pytest
	poetry run python3 run_tests.py
