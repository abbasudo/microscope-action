# Container image that runs your code
FROM laravelsail/php${INPUT_PHP_VERSION}-composer

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

#Make sure to make you entrypoint.sh file executable:
RUN chmod 777 entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]