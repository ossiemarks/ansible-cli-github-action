FROM cytopia/ansible

RUN apt update ; apt install python3-pip ; pip3 install boto3 ; pip3 install botocore


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
