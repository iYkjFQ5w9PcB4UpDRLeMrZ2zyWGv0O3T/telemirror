FROM python:latest
ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"
#clonning repo 
COPY . .
#working directory 
#WORKDIR /root/telemirror

# Install requirements
RUN pip3 install -U -r requirements.txt

CMD python3 app/telemirror.py
