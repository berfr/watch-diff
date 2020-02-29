version := $(shell python3 -c "import watch_diff;print(watch_diff.__version__)")

.PHONY: build clean tests release

build:
	python setup.py sdist bdist_wheel

clean:
	rm -rf build dist watch_diff.egg-info

tests:
	python -m unittest

release: clean build tests
	git commit -am v$(version)
	git tag -s v$(version) -m v$(version)
	git push && git push --tags
	twine upload dist/*
