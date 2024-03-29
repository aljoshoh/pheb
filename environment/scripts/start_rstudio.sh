#!/bin/bash

# Set username
export USER=rstudio
export RSTUDIO_USER=${USER}
export USERNAME=${USER}

# generate a new password to be used for the current user
password=$(openssl rand -base64 20)
export RSTUDIO_PASSWORD=${password}

# port is the first parameter, must not be empty
port=${1}
if [[ -z ${port} ]]; then
  echo "You must specify a port. Suggested range: 8000-9000"
  exit 1
fi

echo "Password for this session is:"
echo ${password}

# this path has to match the one in the dockerfile!
RSTUDIO_AUTH="/bin/rstudio_auth"


# create the cookiefile in a custom location to allow different
# users running rstudio on the same system
COOKIE_FILE=/home/rstudio-session-cookie
test -f ${COOKIE_FILE} || echo `uuidgen` > ${COOKIE_FILE}

echo "Running RStudio server at http://localhost:${port}"

# run rstudio
/usr/lib/rstudio-server/bin/rserver \
  --www-port=${port} \
  --auth-none=0 \
  --auth-pam-helper-path=${RSTUDIO_AUTH} \
  --auth-encrypt-password=0 \
  --secure-cookie-key-file ${COOKIE_FILE}

