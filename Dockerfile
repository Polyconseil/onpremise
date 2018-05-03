FROM sentry:8.22-onbuild

# Install SAML2 Sentry plugin
RUN \
    apt-get update;\
    apt-get -y install pkg-config libxmlsec1-dev libxmlsec1-openssl;\
    pip install https://github.com/getsentry/sentry-auth-saml2/archive/master.zip;\
    apt-get -y remove libxmlsec1-dev
