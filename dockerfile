FROM python:3.11-slim

# Create autogenstudio user
RUN useradd --create-home autogenstudio
WORKDIR /home/autogenstudio

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt && pip install autogenstudio

# add autogenstudio to the PATH
ENV OPENAI_API_KEY="your-key-here"

RUN autogenstudio version

EXPOSE 8081

# Change to the autogenstudio user
USER autogenstudio
ENTRYPOINT [ "autogenstudio", "ui", "--host", "0.0.0.0", "--port", "8081"]