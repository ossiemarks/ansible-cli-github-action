FROM cytopia/ansible

RUN pip3 install boto3;  python3 -m pip install boto3 ;pip3 install ansible ; pip install botocore
               


COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
