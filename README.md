# PyPi package boilerplate

## Requirements

```sh
$ python3 -m pip install --user --upgrade setuptools wheel
$ python3 -m pip install --user --upgrade twine
```

## How to install a package locally?

```sh
$ python3 setup.py install
# The command available is defined on
#  entry_points={
#        'console_scripts': [
#            'example-package-docker = example_pkg:main',
#        ],
#    },
#
# Therefore the command "example-package-docker" becomes available on console
```

## How to build a package?

```sh
# Building the package
$ python3 setup.py sdist bdist_wheel

# This will create a dist folder containing the packages
# dist/
#   example_pkg_YOUR_USERNAME_HERE-0.0.1-py3-none-any.whl
#   example_pkg_YOUR_USERNAME_HERE-0.0.1.tar.gz
```

## How to publish your package?

```sh
# Uploading the package
$ python3 -m twine upload -u <USER_NAME> -p <YOUR_PASSWORD> dist/*
```

## Installing a Docker package

```sh
# Build the docker image
$ docker build -t example-package-docker .

# Run the container, this makes the command "example-package-docker" available
$ docker container run -d example-package-docker

# Run on the terminal
$ example-package-docker
Printing from Docker
```

## LICENSE

MIT License

Copyright (c) 2019 Claudio Jose Castaldello Busatto

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
