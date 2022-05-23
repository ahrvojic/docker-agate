#!/bin/sh

SERVER_ARGS=""

# Defaults
HOSTNAME=${HOSTNAME:-localhost}
ADDR_IPV4=${ADDR_IPV4:-0.0.0.0:1965}
CONTENT=${CONTENT:-/var/gemini}
LANG=${LANG:-en-US}

# Arguments
if [ ${HOSTNAME} ]; then
    SERVER_ARGS="${SERVER_ARGS} --hostname ${HOSTNAME}"
fi

if [ ${ADDR_IPV4} ]; then
    SERVER_ARGS="${SERVER_ARGS} --addr ${ADDR_IPV4}"
fi

if [ ${ADDR_IPV6} ]; then
    SERVER_ARGS="${SERVER_ARGS} --addr ${ADDR_IPV6}"
fi

if [ ${CONTENT} ]; then
    SERVER_ARGS="${SERVER_ARGS} --content ${CONTENT}"
fi

if [ ${LANG} ]; then
    SERVER_ARGS="${SERVER_ARGS} --lang ${LANG}"
fi

/usr/sbin/agate ${SERVER_ARGS}
