[![GitHub](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](https://github.com/tle06/docker-wikijs/blob/master/LICENSE) [![Docker HUB](https://img.shields.io/docker/pulls/tlnk/docker-wikijs.svg?style=flat-square)](https://hub.docker.com/r/tlnk/docker-wikijs/) [![MicroBadger Layers](https://img.shields.io/microbadger/layers/tlnk/docker-wikijs.svg?style=flat-square)](https://microbadger.com/images/tlnk/docker-wikijs) [![MicroBadger Image Size](https://img.shields.io/microbadger/image-size/tlnk/docker-wikijs.svg?style=flat-square)](https://microbadger.com/images/tlnk/docker-wikijs) [![Docker Build Status](https://img.shields.io/docker/build/tlnk/docker-wikijs.svg?style=flat-square)](https://hub.docker.com/r/tlnk/docker-wikijs/builds/)



# Wiki.js

![logo](https://beta.requarks.io/svg/logo.svg)

# Supported tags and respective

* latest [Dockerfile](https://github.com/tle06/docker-wikijs/blob/master/Dockerfile)

This image is updated via pull requests to the tle06/docker-wikijs GitHub repo.

An open source, modern and powerful wiki app built on Node.js, Git and Markdown.

- [Official Website](https://wiki.js.org/)
- [Getting Started](https://wiki.js.org/get-started.html)
- [Documentation](https://docs.requarks.io/wiki)
- [Requirements](#requirements)
- [Demo](#demo)
- [Change Log](https://github.com/Requarks/wiki/blob/master/CHANGELOG.md)
- [Feature Requests](https://requests.requarks.io/wiki)
- [Milestones](#milestones)

# Image configuration
Build from [requarks/wiki:latest](https://github.com/Requarks/wiki/blob/master/tools/Dockerfile)

* node
* nano
* git
* curl
* bash
* openssh
* supervisor

* port 80
* workdir = /var/wiki


# Available ENV variable
All environment variable are base on the config file available [here](https://github.com/Requarks/wiki/blob/master/config.sample.yml)

## Mandatory ENV variable
WIKI_ADMIN_EMAIL=admin@example.com

## Rancher ENV variable

WIKI_ADMIN_EMAIL=admin@example.com
W_TITLE=Wiki
W_HOST=http://localhost 
W_PORT=80
W_REPO_PATH=./repo 
W_DATA_PATH=./data 
W_MAX_IMAGE_FILE_SIZE=3
W_MAX_OTHER_FILE_SIZE=100
W_LANG=en
W_LANG_RTL=false
W_PUBLIC_ACCESS=false
W_AUTH_DEFAULT_READ_ACCESS=false
W_AUTH_LOCAL=true
W_AUTH_GOOGLE=false
W_AUTH_GG_CLIENT_ID=toBeReplace
W_AUTH_GG_CLIENT_SECRET=toBeReplace
W_AUTH_MICROSOFT=false
W_AUTH_MS_CLIENT_ID=toBeReplace
W_AUTH_MS_CLIENT_SECRET=toBeReplace
W_AUTH_FACEBOOK=false
W_AUTH_FB_CLIENT_ID=toBeReplace
W_AUTH_FB_CLIENT_SECRET=toBeReplace
W_AUTH_GITHUB=false
W_AUTH_GH_CLIENT_ID=toBeReplace
W_AUTH_GH_CLIENT_SECRET=toBeReplace
W_AUTH_SLACK=false
W_AUTH_SK_CLIENT_ID=toBeReplace
W_AUTH_CLIENT_SECRET=toBeReplace
W_AUTH_LDAP=false
W_AUTH_LDAP_URL=toBeReplace
W_AUTH_LDAP_BIND_DN=toBeReplace
W_AUTH_LDAP_BIND_CREDENTIALS=toBeReplace
W_AUTH_LDAP_SEARCH_BASE=toBeReplace
W_AUTH_LDAP_SEARCH_FILTER=toBeReplace
W_AUTH_LDAP_TLS_ENABLE=toBeReplace
W_AUTH_LDAP_TLS_CERT_PATH=toBeReplace
W_AUTH_AZURE=false
W_AUTH_AZ_CLIENT_ID=toBeReplace
W_AUTH_AZ_CLIENT_SECRET=toBeReplace
W_AUTH_AZ_RESOURCE=toBeReplace
W_AUTH_AZ_TENANT=toBeReplace
W_AUTH_OAUTH2=false
W_AUTH_OH_CLIENT_ID=toBeReplace
W_AUTH_OH_CLIENT_SECRET=toBeReplace
W_AUTH_OH_AUTHORIZATION_URL=toBeReplace
W_AUTH_OH_TOKEN_URL=toBeReplace
W_AUTH_OIDC=false
W_AUTH_OC_CLIENT_ID=toBeReplace
W_AUTH_OC_CLIENT_SECRET=toBeReplace
W_AUTH_OC_ISSUER=toBeReplace
W_AUTH_OC_USER_INFO_URL=toBeReplace
W_AUTH_OC_AUTHORIZATION_URL=toBeReplace
W_AUTH_OC_TOKEN_URL
W_AUTH_OC_EMAIL_CLAIM=toBeReplace
W_AUTH_OC_USERNAME_CLAIM=toBeReplace
W_SESSION_SECRET=1234567890abcdefghijklmnopqrstuvxyz 
W_DB_CONNECTION_STRING=mongodb://localhost:27017/wiki 
W_GIT_ENABLE=false
W_GH_AUTH_TYPE=ssh
W_GH_USERNAME=toBeReplace
W_GH_PASSWORD=toBeReplace
W_GH_SSL_VERIFY=true
W_GH_SERVER_EMAIL=toBeReplace
W_GH_SHOW_USER_EMAIL=true
W_FT_LINE_BREAKS=true
W_FT_MATHJAX=true
W_EL_BUGSNAG_ENABLE=false
W_EL_LOGGLY_ENABLE=false
W_EL_PAPERTRAIL_ENABLE=false
W_EL_ROLLBAR_ENABLE=false
W_EL_SENTRY_ENABLE=false
W_THEME_PRIMARY=indigo
W_THEME_ALT=blue-grey 
W_THEME_VIEWSOURCE=all
W_THEME_FOOTER=blue-grey 
W_THEME_CODE_ENABLE=true
W_THEME_COLORIZE_ENABLE=true

## Docker compose ENV variable

-e WIKI_ADMIN_EMAIL=admin@example.com \
-e W_TITLE=Wiki \
-e W_HOST=http://localhost \
-e W_PORT=80 \
-e W_REPO_PATH=./repo \
-e W_DATA_PATH=./data \
-e W_MAX_IMAGE_FILE_SIZE=3 \
-e W_MAX_OTHER_FILE_SIZE=100 \
-e W_LANG=en \
-e W_LANG_RTL=false \
-e W_PUBLIC_ACCESS=false \
-e W_AUTH_DEFAULT_READ_ACCESS=false \
-e W_AUTH_LOCAL=true \
-e W_AUTH_GOOGLE=false \
-e W_AUTH_GG_CLIENT_ID= \
-e W_AUTH_GG_CLIENT_SECRET= \
-e W_AUTH_MICROSOFT=false \
-e W_AUTH_MS_CLIENT_ID= \
-e W_AUTH_MS_CLIENT_SECRET= \
-e W_AUTH_FACEBOOK=false \
-e W_AUTH_FB_CLIENT_ID= \
-e W_AUTH_FB_CLIENT_SECRET= \
-e W_AUTH_GITHUB=false \
-e W_AUTH_GH_CLIENT_ID= \
-e W_AUTH_GH_CLIENT_SECRET= \
-e W_AUTH_SLACK=false \
-e W_AUTH_SK_CLIENT_ID= \
-e W_AUTH_CLIENT_SECRET= \
-e W_AUTH_LDAP=false \
-e W_AUTH_LDAP_URL= \
-e W_AUTH_LDAP_BIND_DN= \
-e W_AUTH_LDAP_BIND_CREDENTIALS= \
-e W_AUTH_LDAP_SEARCH_BASE= \
-e W_AUTH_LDAP_SEARCH_FILTER= \
-e W_AUTH_LDAP_TLS_ENABLE= \
-e W_AUTH_LDAP_TLS_CERT_PATH= \
-e W_AUTH_AZURE=false \
-e W_AUTH_AZ_CLIENT_ID= \
-e W_AUTH_AZ_CLIENT_SECRET= \
-e W_AUTH_AZ_RESOURCE= \
-e W_AUTH_AZ_TENANT= \
-e W_AUTH_OAUTH2=false \
-e W_AUTH_OH_CLIENT_ID= \
-e W_AUTH_OH_CLIENT_SECRET= \
-e W_AUTH_OH_AUTHORIZATION_URL= \
-e W_AUTH_OH_TOKEN_URL= \
-e W_AUTH_OIDC=false \
-e W_AUTH_OC_CLIENT_ID= \
-e W_AUTH_OC_CLIENT_SECRET= \
-e W_AUTH_OC_ISSUER= \
-e W_AUTH_OC_USER_INFO_URL= \
-e W_AUTH_OC_AUTHORIZATION_URL= \
-e W_AUTH_OC_TOKEN_URL \
-e W_AUTH_OC_EMAIL_CLAIM= \
-e W_AUTH_OC_USERNAME_CLAIM= \
-e W_SESSION_SECRET=1234567890abcdefghijklmnopqrstuvxyz \
-e W_DB_CONNECTION_STRING=mongodb://localhost:27017/wiki \
-e W_GIT_ENABLE=false \
-e W_GH_AUTH_TYPE=ssh \
-e W_GH_USERNAME= \
-e W_GH_PASSWORD= \
-e W_GH_SSL_VERIFY=true \
-e W_GH_SERVER_EMAIL= \
-e W_GH_SHOW_USER_EMAIL=true \
-e W_USER_EMAIL=true \
-e W_FT_LINE_BREAKS=true \
-e W_FT_MATHJAX=true \
-e W_EL_BUGSNAG_ENABLE=false \
-e W_EL_LOGGLY_ENABLE=false \
-e W_EL_PAPERTRAIL_ENABLE=false \
-e W_EL_ROLLBAR_ENABLE=false \
-e W_EL_SENTRY_ENABLE=false \
-e W_THEME_PRIMARY=indigo \
-e W_THEME_ALT=blue-grey \
-e W_THEME_VIEWSOURCE=all \
-e W_THEME_FOOTER=blue-grey \
-e W_THEME_CODE_ENABLE=true \
-e W_THEME_COLORIZE_ENABLE=true \


### Custom config file location

USE_CUSTOM_CONFIG_FILE=false
CUSTOM_CONFIG_FILE_LOCATION=/var/wiki/config/config.yml

An symbolic link will be create from __CUSTOM_CONFIG_FILE_LOCATION__ to __/var/wiki/config.yml__

# How to use this image
## Start docker-wikijs

Starting the wikijs instance listening on port 80 is as easy as the following:
``` Docker

$ docker run -d -p 27107:27107 mongo -name wiki-db
$ docker run -d --restart=unless-stopped -p 80:80 \
-e WIKI_ADMIN_EMAIL=admin@example.com \
-e W_TITLE=Wiki \
-e W_HOST=http://localhost \
-e W_PORT=80 \
-e W_REPO_PATH=./repo \
-e W_DATA_PATH=./data \
-e W_MAX_IMAGE_FILE_SIZE=3 \
-e W_MAX_OTHER_FILE_SIZE=100 \
-e W_LANG=en \
-e W_LANG_RTL=false \
-e W_PUBLIC_ACCESS=false \
-e W_AUTH_DEFAULT_READ_ACCESS=false \
-e W_AUTH_LOCAL=true \
-e W_AUTH_GOOGLE=false \
-e W_AUTH_GG_CLIENT_ID= \
-e W_AUTH_GG_CLIENT_SECRET= \
-e W_AUTH_MICROSOFT=false \
-e W_AUTH_MS_CLIENT_ID= \
-e W_AUTH_MS_CLIENT_SECRET= \
-e W_AUTH_FACEBOOK=false \
-e W_AUTH_FB_CLIENT_ID= \
-e W_AUTH_FB_CLIENT_SECRET= \
-e W_AUTH_GITHUB=false \
-e W_AUTH_GH_CLIENT_ID= \
-e W_AUTH_GH_CLIENT_SECRET= \
-e W_AUTH_SLACK=false \
-e W_AUTH_SK_CLIENT_ID= \
-e W_AUTH_CLIENT_SECRET= \
-e W_AUTH_LDAP=false \
-e W_AUTH_LDAP_URL= \
-e W_AUTH_LDAP_BIND_DN= \
-e W_AUTH_LDAP_BIND_CREDENTIALS= \
-e W_AUTH_LDAP_SEARCH_BASE= \
-e W_AUTH_LDAP_SEARCH_FILTER= \
-e W_AUTH_LDAP_TLS_ENABLE= \
-e W_AUTH_LDAP_TLS_CERT_PATH= \
-e W_AUTH_AZURE=false \
-e W_AUTH_AZ_CLIENT_ID= \
-e W_AUTH_AZ_CLIENT_SECRET= \
-e W_AUTH_AZ_RESOURCE= \
-e W_AUTH_AZ_TENANT= \
-e W_AUTH_OAUTH2=false \
-e W_AUTH_OH_CLIENT_ID= \
-e W_AUTH_OH_CLIENT_SECRET= \
-e W_AUTH_OH_AUTHORIZATION_URL= \
-e W_AUTH_OH_TOKEN_URL= \
-e W_AUTH_OIDC=false \
-e W_AUTH_OC_CLIENT_ID= \
-e W_AUTH_OC_CLIENT_SECRET= \
-e W_AUTH_OC_ISSUER= \
-e W_AUTH_OC_USER_INFO_URL= \
-e W_AUTH_OC_AUTHORIZATION_URL= \
-e W_AUTH_OC_TOKEN_URL \
-e W_AUTH_OC_EMAIL_CLAIM= \
-e W_AUTH_OC_USERNAME_CLAIM= \
-e W_SESSION_SECRET=1234567890abcdefghijklmnopqrstuvxyz \
-e W_DB_CONNECTION_STRING=mongodb://localhost:27017/wiki \
-e W_GIT_ENABLE=false \
-e W_GH_AUTH_TYPE=ssh \
-e W_GH_USERNAME= \
-e W_GH_PASSWORD= \
-e W_GH_SSL_VERIFY=true \
-e W_GH_SERVER_EMAIL= \
-e W_GH_SHOW_USER_EMAIL=true \
-e W_USER_EMAIL=true \
-e W_FT_LINE_BREAKS=true \
-e W_FT_MATHJAX=true \
-e W_EL_BUGSNAG_ENABLE=false \
-e W_EL_LOGGLY_ENABLE=false \
-e W_EL_PAPERTRAIL_ENABLE=false \
-e W_EL_ROLLBAR_ENABLE=false \
-e W_EL_SENTRY_ENABLE=false \
-e W_THEME_PRIMARY=indigo \
-e W_THEME_ALT=blue-grey \
-e W_THEME_VIEWSOURCE=all \
-e W_THEME_FOOTER=blue-grey \
-e W_THEME_CODE_ENABLE=true \
-e W_THEME_COLORIZE_ENABLE=true \
tlnk/docker-wikijs -link wiki-dc:db

```
Then go to http://localhost/ and go through the wizard. The default password is __admin123__

## Use docker compose

``` Docker
version: '2'
services:
  wiki:
    image: tlnk/docker-wikijs
    environment:
      WIKI_ADMIN_EMAIL=admin@example.com
      W_TITLE= Wiki
      W_HOST=http://localhost 
      W_PORT=80
      W_REPO_PATH=./repo 
      W_DATA_PATH=./data 
      W_MAX_IMAGE_FILE_SIZE=3
      W_MAX_OTHER_FILE_SIZE=100
      W_LANG=en
      W_LANG_RTL=false
      W_PUBLIC_ACCESS=false
      W_AUTH_DEFAULT_READ_ACCESS=false
      W_AUTH_LOCAL=true
      W_AUTH_GOOGLE=false
      W_AUTH_GG_CLIENT_ID=
      W_AUTH_GG_CLIENT_SECRET=
      W_AUTH_MICROSOFT=false
      W_AUTH_MS_CLIENT_ID=
      W_AUTH_MS_CLIENT_SECRET=
      W_AUTH_FACEBOOK=false
      W_AUTH_FB_CLIENT_ID=
      W_AUTH_FB_CLIENT_SECRET=
      W_AUTH_GITHUB=false
      W_AUTH_GH_CLIENT_ID=
      W_AUTH_GH_CLIENT_SECRET=
      W_AUTH_SLACK=false
      W_AUTH_SK_CLIENT_ID=
      W_AUTH_CLIENT_SECRET=
      W_AUTH_LDAP=false
      W_AUTH_LDAP_URL=
      W_AUTH_LDAP_BIND_DN=
      W_AUTH_LDAP_BIND_CREDENTIALS=
      W_AUTH_LDAP_SEARCH_BASE=
      W_AUTH_LDAP_SEARCH_FILTER=
      W_AUTH_LDAP_TLS_ENABLE=
      W_AUTH_LDAP_TLS_CERT_PATH=
      W_AUTH_AZURE=false
      W_AUTH_AZ_CLIENT_ID=
      W_AUTH_AZ_CLIENT_SECRET=
      W_AUTH_AZ_RESOURCE=
      W_AUTH_AZ_TENANT=
      W_AUTH_OAUTH2=false
      W_AUTH_OH_CLIENT_ID=
      W_AUTH_OH_CLIENT_SECRET=
      W_AUTH_OH_AUTHORIZATION_URL=
      W_AUTH_OH_TOKEN_URL=
      W_AUTH_OIDC=false
      W_AUTH_OC_CLIENT_ID=
      W_AUTH_OC_CLIENT_SECRET=
      W_AUTH_OC_ISSUER=
      W_AUTH_OC_USER_INFO_URL=
      W_AUTH_OC_AUTHORIZATION_URL=
      W_AUTH_OC_TOKEN_URL
      W_AUTH_OC_EMAIL_CLAIM=
      W_AUTH_OC_USERNAME_CLAIM=
      W_SESSION_SECRET=1234567890abcdefghijklmnopqrstuvxyz 
      W_DB_CONNECTION_STRING=mongodb://localhost:27017/wiki 
      W_GIT_ENABLE=false
      W_GH_AUTH_TYPE=ssh
      W_GH_USERNAME=
      W_GH_PASSWORD=
      W_GH_SSL_VERIFY=true
      W_GH_SERVER_EMAIL=
      W_GH_SHOW_USER_EMAIL=true
      W_FT_LINE_BREAKS=true
      W_FT_MATHJAX=true
      W_EL_BUGSNAG_ENABLE=false
      W_EL_LOGGLY_ENABLE=false
      W_EL_PAPERTRAIL_ENABLE=false
      W_EL_ROLLBAR_ENABLE=false
      W_EL_SENTRY_ENABLE=false
      W_THEME_PRIMARY=indigo
      W_THEME_ALT=blue-grey 
      W_THEME_VIEWSOURCE=all
      W_THEME_FOOTER=blue-grey 
      W_THEME_CODE_ENABLE=true
      W_THEME_COLORIZE_ENABLE=true
    volumes:
    - /wiki/data:/var/wiki/data
    - /wiki/repo:/var/wiki/repo
    links:
    - wiki-db:db
    ports:
    - 80:80/tcp
    labels:
  wiki-db:
    image: mongo
    volumes:
    - /wiki/db:/data/db
    ports:
    - 27017:27017/tcp
    command:
    - --smallfiles
    - --bind_ip
    - wiki-db
    labels:

```
## Persistent data
All data are stored inside the mogo db. Following folder still need to be mapped:

* -v /<mydatalocation>:/var/wiki/data
* -v /<mydatalocation>:/var/wiki/repo

# Rancher template
An rancher template is also available [here](https://github.com/tle06/rancher-catalog.git)

