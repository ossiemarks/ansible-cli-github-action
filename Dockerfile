FROM cytopia/ansible

RUN apt update ; apt-get install python3 -y ; apt-get install python3-pip -y; pip3 install boto3;  python3 -m pip install boto3 ;pip3 install ansible
               


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
