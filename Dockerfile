FROM python:3.9-slim-bullseye

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR /src

# Install dependencies:
COPY . .
RUN python3 -m pip install --upgrade pip
RUN pip install -r dev-requirements.txt

# Run the application:
CMD ["python", "main.py"]