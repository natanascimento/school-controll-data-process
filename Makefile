SHELL := /bin/bash

.PHONY: help setup run
.DEFAULT: help

help:
	@echo "make setup"
	@echo "          Settings configure the virtual environments and install the dependencies"
	@echo "----------"
	@echo "make run"
	@echo "         Run project"
	@echo "----------"
	@echo "make test"
	@echo "         Testing project"
	@echo "----------"

setup:
	python3 -m venv .venv
	source .venv/bin/activate && python -m pip install -r requirements.txt

run:
	python3 app/main.py

test:
	clear && pytest -vv