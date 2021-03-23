FROM python:3.7.10
WORKDIR /code 
COPY . . 
RUN apt update
RUN apt install unzip
RUN apt install unrar
RUN apt install -y libgl1-mesa-glx
RUN apt-get install -y python3-tk
RUN pip install -r requirements.txt 

#RUN bash download_drive.sh
#RUN unzip './data/*.zip' -d ./data
#RUN wget -P ./weights https://drive.google.com/file/d/1smF9gv6ZZPQu4pLFbpdX7Km_CiBEf6T_/view?usp=sharing

#ENTRYPOINT ["bash", "download_drive.sh"]
