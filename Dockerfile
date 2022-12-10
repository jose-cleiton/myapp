FROM python:3.9-slim-bullseye

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements.txt .
RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

# Run the application:
COPY myapp.py .
CMD ["python", "myapp.py"]