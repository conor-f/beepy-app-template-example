list:
    @just --list

# TODO: Make these both work without relying on pip!
beepy-install:
    @python -m pip install beepy_app_template_example

beepy-remove:
    @python -m pip uninstall beepy_app_template_example

run:
    @poetry run beepy_app_template_example

# Run the tests
test:
    @poetry run pytest tests

# Initialize the application
init:
    poetry install
    echo "Application initialized successfully."
    poetry run pre-commit install
    echo "Pre-commit hooks set up."
