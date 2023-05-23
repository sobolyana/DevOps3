FROM ubuntu

RUN apt-get update && apt-get install -y curl

COPY bash_script.sh /
RUN chmod +x bash_script.sh

CMD ["/bin/bash", "/bash_script.sh"]
