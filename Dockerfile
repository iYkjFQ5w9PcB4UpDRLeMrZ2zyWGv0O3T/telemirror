FROM python:latest
#clonning repo 
RUN git clone https://github.com/iYkjFQ5w9PcB4UpDRLeMrZ2zyWGv0O3T/telemirror.git /root/telemirror
#working directory 
WORKDIR /root/telemirror

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/telemirror/bin:$PATH"

CMD ["python3","-m","/root/telemirror/app/telemirror.py"]
