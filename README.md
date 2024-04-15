# python_template
My template repo for Python projects



## Set up the repo
This template uses [Poetry](https://python-poetry.org/) to manage
dependencies. First install that!

```bash
# This line tells Poetry to put
# it's virtualenv right in the project folder
# Where apps like VS Code will know how to work with it

poetry config --local virtualenvs.in-project true

# Delete this lineif you use the keyring, otherwise
# it is needed on some platforms as that feature isn't supported.
poetry config --local keyring.enabled false

# Install all project dependencies into the .venv,
# Including the ones needed for testing.
poetry install -v --with test

# Poetry will run it in the virtualenv
poetry run python dev_run.py

# Set up the pre commit hooks to format and lint code
pre-commit install

# The default makefile includes a help command to show what options are there
make help
```