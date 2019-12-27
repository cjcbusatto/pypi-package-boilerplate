# PyPi package boilerplate


## How to publish your package?

```sh
# Building the package
$ python3 -m pip install --user --upgrade setuptools wheel
$ python3 setup.py sdist bdist_wheel

# This will create a dist folder containing the packages
# dist/
#   example_pkg_YOUR_USERNAME_HERE-0.0.1-py3-none-any.whl
#   example_pkg_YOUR_USERNAME_HERE-0.0.1.tar.gz

# Uploading the package
$ python3 -m pip install --user --upgrade twine
$ python3 -m twine upload -u <USER_NAME> -p <YOUR_PASSWORD> dist/*
