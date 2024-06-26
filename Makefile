.PHONY: install test format lint all

install:
	pip install --upgrade pip setuptools wheel && \
	pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all: install lint test