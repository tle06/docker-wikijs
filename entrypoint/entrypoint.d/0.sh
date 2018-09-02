#!/usr/bin/shell

#init env variable
VAR_TITLE="${W_TITLE:-Wiki}"
VAR_HOST="${W_HOST:-http://localhost}"
VAR_PORT="${W_PORT:-80}"
VAR_REPO_PATH="${W_REPO_PATH:-./repo}"
VAR_DATA_PATH="${W_DATA_PATH:-./data}"
VAR_MAX_IMAGE_FILE_SIZE="${W_MAX_IMAGE_FILE_SIZE:-3}"
VAR_MAX_OTHER_FILE_SIZE="${W_MAX_OTHER_FILE_SIZE:-100}"
VAR_LANG="${W_LANG:-en}"
VAR_LANG_RTL="${W_LANG_RTL:-false}"
VAR_PUBLIC_ACCESS="${W_PUBLIC_ACCESS:-false}"
VAR_AUTH_DEFAULT_READ_ACCESS="${W_AUTH_DEFAULT_READ_ACCESS:-false}"
VAR_AUTH_LOCAL="${W_AUTH_LOCAL:-true}"
VAR_AUTH_GOOGLE="${W_AUTH_GOOGLE:-false}"
VAR_AUTH_GG_CLIENT_ID="${W_AUTH_GG_CLIENT_ID:-MissingConfiguration}"
VAR_AUTH_GG_CLIENT_SECRET="${W_AUTH_GG_CLIENT_SECRET:-MissingConfiguration}"
VAR_AUTH_MICROSOFT="${W_AUTH_MICROSOFT:-false}"
VAR_AUTH_MS_CLIENT_ID="${W_AUTH_MS_CLIENT_ID:-MissingConfiguration}"
VAR_AUTH_MS_CLIENT_SECRET="${W_AUTH_MS_CLIENT_SECRET:-MissingConfiguration}"
VAR_AUTH_FACEBOOK="${W_AUTH_FACEBOOK:-false}"
VAR_AUTH_FB_CLIENT_ID="${W_AUTH_FB_CLIENT_ID:-MissingConfiguration}"
VAR_AUTH_FB_CLIENT_SECRET="${W_AUTH_FB_CLIENT_SECRET:-MissingConfiguration}"
VAR_AUTH_GITHUB="${W_AUTH_GITHUB:-false}"
VAR_AUTH_GH_CLIENT_ID="${W_AUTH_GH_CLIENT_ID:-MissingConfiguration}"
VAR_AUTH_GH_CLIENT_SECRET="${W_AUTH_GH_CLIENT_SECRET:-MissingConfiguration}"
VAR_AUTH_SLACK="${W_AUTH_SLACK:-false}"
VAR_AUTH_SK_CLIENT_ID="${W_AUTH_SK_CLIENT_ID:-MissingConfiguration}"
VAR_AUTH_CLIENT_SECRET="${W_AUTH_CLIENT_SECRET:-MissingConfiguration}"
VAR_AUTH_LDAP="${W_AUTH_LDAP:-false}"
VAR_AUTH_LDAP_URL="${W_AUTH_LDAP_URL:-MissingConfiguration}"
VAR_AUTH_LDAP_BIND_DN="${W_AUTH_LDAP_BIND_DN:-MissingConfiguration}"
VAR_AUTH_LDAP_BIND_CREDENTIALS="${W_AUTH_LDAP_BIND_CREDENTIALS:-MissingConfiguration}"
VAR_AUTH_LDAP_SEARCH_BASE="${W_AUTH_LDAP_SEARCH_BASE:-MissingConfiguration}"
VAR_AUTH_LDAP_SEARCH_FILTER="${W_AUTH_LDAP_SEARCH_FILTER:-MissingConfiguration}"
VAR_AUTH_LDAP_TLS_ENABLE="${W_AUTH_LDAP_TLS_ENABLE:-MissingConfiguration}"
VAR_AUTH_LDAP_TLS_CERT_PATH="${W_AUTH_LDAP_TLS_CERT_PATH:-MissingConfiguration}"
VAR_AUTH_AZURE="${W_AUTH_AZURE:-false}"
VAR_AUTH_AZ_CLIENT_ID="${W_AUTH_AZ_CLIENT_ID:-MissingConfiguration}"
VAR_AUTH_AZ_CLIENT_SECRET="${W_AUTH_AZ_CLIENT_SECRET:-MissingConfiguration}"
VAR_AUTH_AZ_RESOURCE="${W_AUTH_AZ_RESOURCE:-MissingConfiguration}"
VAR_AUTH_AZ_TENANT="${W_AUTH_AZ_TENANT:-MissingConfiguration}"
VAR_AUTH_OAUTH2="${W_AUTH_OAUTH2:-false}"
VAR_AUTH_OH_CLIENT_ID="${W_AUTH_OH_CLIENT_ID:-MissingConfiguration}"
VAR_AUTH_OH_CLIENT_SECRET="${W_AUTH_OH_CLIENT_SECRET:-MissingConfiguration}"
VAR_AUTH_OH_AUTHORIZATION_URL="${W_AUTH_OH_AUTHORIZATION_URL:-MissingConfiguration}"
VAR_AUTH_OH_TOKEN_URL="${W_AUTH_OH_TOKEN_URL:-MissingConfiguration}"
VAR_AUTH_OIDC="${W_AUTH_OIDC:-false}"
VAR_AUTH_OC_CLIENT_ID="${W_AUTH_OC_CLIENT_ID:-MissingConfiguration}"
VAR_AUTH_OC_CLIENT_SECRET="${W_AUTH_OC_CLIENT_SECRET:-MissingConfiguration}"
VAR_AUTH_OC_ISSUER="${W_AUTH_OC_ISSUER:-MissingConfiguration}"
VAR_AUTH_OC_USER_INFO_URL="${W_AUTH_OC_USER_INFO_URL:-MissingConfiguration}"
VAR_AUTH_OC_AUTHORIZATION_URL="${W_AUTH_OC_AUTHORIZATION_URL:-MissingConfiguration}"
VAR_AUTH_OC_TOKEN_URL="${W_AUTH_OC_TOKEN_URL:-MissingConfiguration}"
VAR_AUTH_OC_EMAIL_CLAIM="${W_AUTH_OC_EMAIL_CLAIM:-MissingConfiguration}"
VAR_AUTH_OC_USERNAME_CLAIM="${W_AUTH_OC_USERNAME_CLAIM:-MissingConfiguration}"
VAR_SESSION_SECRET="${W_SESSION_SECRET:-1234567890abcdefghijklmnopqrstuvxyz}"
VAR_DB_CONNECTION_STRING="${W_DB_CONNECTION_STRING:-mongodb://localhost:27017/wiki}"
VAR_GIT_ENABLE="${W_GIT_ENABLE:-false}"
VAR_GH_AUTH_TYPE="${W_GH_AUTH_TYPE:-ssh}"
VAR_GH_USERNAME="${W_GH_USERNAME:-MissingConfiguration}"
VAR_GH_PASSWORD="${W_GH_PASSWORD:-MissingConfiguration}"
VAR_GH_SSL_VERIFY="${W_GH_SSL_VERIFY:-true}"
VAR_GH_SERVER_EMAIL="${W_GH_SERVER_EMAIL:-MissingConfiguration}"
VAR_GH_SHOW_USER="${W_GH_SHOW_USER_EMAIL=true}"
VAR_USER_EMAIL="${W_USER_EMAIL:-true}"
VAR_FT_LINE_BREAKS="${W_FT_LINE_BREAKS:-true}"
VAR_FT_MATHJAX="${W_FT_MATHJAX:-true}"
VAR_EL_BUGSNAG_ENABLE="${W_EL_BUGSNAG_ENABLE:-false}"
VAR_EL_LOGGLY_ENABLE="${W_EL_LOGGLY_ENABLE:-false}"
VAR_EL_PAPERTRAIL_ENABLE="${W_EL_PAPERTRAIL_ENABLE:-false}"
VAR_EL_ROLLBAR_ENABLE="${W_EL_ROLLBAR_ENABLE:-false}"
VAR_EL_SENTRY_ENABLE="${W_EL_SENTRY_ENABLE:-false}"
VAR_THEME_PRIMARY="${W_THEME_PRIMARY:-indigo}"
VAR_THEME_ALT="${W_THEME_ALT:-blue-grey}"
VAR_THEME_VIEWSOURCE="${W_THEME_VIEWSOURCE:-all}"
VAR_THEME_FOOTER="${W_THEME_FOOTER:-blue-grey}"
VAR_THEME_CODE_ENABLE="${W_THEME_CODE_ENABLE:-true}"
VAR_THEME_COLORIZE_ENABLE="${W_THEME_COLORIZE_ENABLE:-true}"
VAR_USE_CUSTOM_CONFIG_FILE="${USE_CUSTOM_CONFIG_FILE:-false}"
VAR_CUSTOM_CONFIG_FILE_LOCATION="${CUSTOM_CONFIG_FILE_LOCATION:-/var/wiki/config.yml}"


if [ "${VAR_USE_CUSTOM_CONFIG_FILE}" = true ]; then
     echo "Custom config file requested"
     file="${VAR_CUSTOM_CONFIG_FILE_LOCATION}"
     

else
    file="/var/wiki/config.yml"
fi

#Get if config applied

if [ -f "$file" ]; then
    echo "$file already exist. Upgrade to replace it"
else

    #Create config file
    echo "Create $file"
    mkdir -p "$(dirname "$file")" && touch "$file"

    if [! "$(dirname "$file")" == "/var/wiki" ]; then
        ln -sf "$file" /var/wiki/config.yml
    fi

    #Write configuration
    echo "Writing configuration into $file"

    echo "
    #######################################################################
    # Wiki.js - CONFIGURATION                                             #
    #######################################################################
    # Full explanation + examples in the documentation:
    # https://docs.requarks.io/wiki/install
    # You can use an ENV variable by using \$(ENV_VAR_NAME) as the value

    # ---------------------------------------------------------------------
    # Title of this site
    # ---------------------------------------------------------------------

    title: ${VAR_TITLE}

    # ---------------------------------------------------------------------
    # Full public path to the site, without the trailing slash
    # ---------------------------------------------------------------------
    # INCLUDE CLIENT PORT IF NOT 80/443!

    host: ${VAR_HOST}

    # ---------------------------------------------------------------------
    # Port the main server should listen to (80 by default)
    # ---------------------------------------------------------------------
    # To use process.env.PORT, comment the line below:

    port: ${VAR_PORT}

    # ---------------------------------------------------------------------
    # Data Directories
    # ---------------------------------------------------------------------

    paths:
    repo: ${VAR_REPO_PATH}
    data: ${VAR_DATA_PATH}

    # ---------------------------------------------------------------------
    # Upload Limits
    # ---------------------------------------------------------------------
    # In megabytes (MB}

    uploads:
    maxImageFileSize: ${VAR_MAX_IMAGE_FILE_SIZE}
    maxOtherFileSize: ${VAR_MAX_OTHER_FILE_SIZE}

    # ---------------------------------------------------------------------
    # Site Language
    # ---------------------------------------------------------------------
    # Possible values: en, de, es, fa, fr, ja, ko, nl, pt, ru, sr, sv, tr or zh

    lang: ${VAR_LANG}

    # Enable for right to left languages (e.g. arabic):
    langRtl: ${VAR_LANG_RTL}

    # ---------------------------------------------------------------------
    # Site Authentication
    # ---------------------------------------------------------------------

    public: ${VAR_PUBLIC_ACCESS}

    auth:
        defaultReadAccess: ${VAR_AUTH_DEFAULT_READ_ACCESS}
    local:
        enabled: ${VAR_AUTH_LOCAL}
    google:
        enabled: ${VAR_AUTH_GOOGLE}
        clientId: ${VAR_AUTH_GG_CLIENT_ID}
        clientSecret: ${VAR_AUTH_GG_CLIENT_SECRET}
    microsoft:
        enabled: ${VAR_AUTH_MICROSOFT}
        clientId: ${VAR_AUTH_MS_CLIENT_ID}
        clientSecret: ${VAR_AUTH_MS_CLIENT_SECRET}
    facebook:
        enabled: ${VAR_AUTH_FACEBOOK}
        clientId: ${VAR_AUTH_FB_CLIENT_ID}
        clientSecret: ${VAR_AUTH_FB_CLIENT_SECRET}
    github:
        enabled: ${VAR_AUTH_GITHUB}
        clientId: ${VAR_AUTH_GH_CLIENT_ID}
        clientSecret: ${VAR_AUTH_GH_CLIENT_SECRET}
    slack:
        enabled: ${VAR_AUTH_SLACK}
        clientId: ${VAR_AUTH_SK_CLIENT_ID}
        clientSecret: ${VAR_AUTH_CLIENT_SECRET}
    ldap:
        enabled: ${VAR_AUTH_LDAP}
        url: ${VAR_AUTH_LDAP_URL}
        bindDn: ${VAR_AUTH_LDAP_BIND_DN}
        bindCredentials: ${VAR_AUTH_LDAP_BIND_CREDENTIALS}
        searchBase: ${VAR_AUTH_LDAP_SEARCH_BASE}
        searchFilter: ${VAR_AUTH_LDAP_SEARCH_FILTER}
        tlsEnabled: ${VAR_AUTH_LDAP_TLS_ENABLE}
        tlsCertPath: ${VAR_AUTH_LDAP_TLS_CERT_PATH}
    azure:
        enabled: ${VAR_AUTH_AZURE}
        clientId: ${VAR_AUTH_AZ_CLIENT_ID}
        clientSecret: ${VAR_AUTH_AZ_CLIENT_SECRET}
        resource: ${VAR_AUTH_AZ_RESOURCE}
        tenant: ${VAR_AUTH_AZ_TENANT}
    oauth2:
        enabled: ${VAR_AUTH_OAUTH2}
        clientId: ${VAR_AUTH_OH_CLIENT_ID}
        clientSecret: ${VAR_AUTH_OH_CLIENT_SECRET}
        authorizationURL: ${VAR_AUTH_OH_AUTHORIZATION_URL}
        tokenURL: ${VAR_AUTH_OH_TOKEN_URL}
    oidc:
        enabled: ${VAR_AUTH_OIDC}
        clientId: ${VAR_AUTH_OC_CLIENT_ID}
        clientSecret: ${VAR_AUTH_OC_CLIENT_SECRET}
        issuer: ${VAR_AUTH_OC_ISSUER}
        userInfoUrl: ${VAR_AUTH_OC_USER_INFO_URL}
        authorizationURL: ${VAR_AUTH_OC_AUTHORIZATION_URL}
        tokenURL: ${VAR_AUTH_OC_TOKEN_URL}
        emailClaim: ${VAR_AUTH_OC_EMAIL_CLAIM}
        usernameClaim: ${VAR_AUTH_OC_USERNAME_CLAIM}
    # ---------------------------------------------------------------------
    # Secret key to use when encrypting sessions
    # ---------------------------------------------------------------------
    # Use a long and unique random string (256-bit keys are perfect!)

    sessionSecret: ${VAR_SESSION_SECRET}

    # ---------------------------------------------------------------------
    # Database Connection String
    # ---------------------------------------------------------------------

    db: ${VAR_DB_CONNECTION_STRING}


    # ---------------------------------------------------------------------
    # Git Connection Info
    # ---------------------------------------------------------------------

    git: ${VAR_GIT_ENABLE}" > $file

    if [ "${VAR_GIT_ENABLE}" = true ]; then
    echo "GIT_ENABLE = true"
    echo "Writing GIT config into /var/wiki/config/yml"

    echo "
    url: ${VAR_GH_URL:-https://github.com/Organization/Repo}
    branch: ${VAR_GH_BRANCH:-master}
    auth:

        # Type: basic or ssh
        type: ${VAR_GH_AUTH_TYPE:-ssh}

        # Only for Basic authentication:
        username: ${VAR_GH_USERNAME:-marty}
        password: ${VAR_GH_PASSWORD:-MartyMcFly88}

        # Only for SSH authentication:
        privateKey: ${VAR_GH_PRIVATE_KEY_PATH:-/etc/wiki/keys/git.pem}

        sslVerify: ${VAR_GH_SSL_VERIFY}

    # Default email to use as commit author
    serverEmail: ${VAR_GH_SERVER_EMAIL:-marty@example.com}

    # Whether to use user email as author in commits
    showUserEmail: ${VAR_GH_SHOVAR_USER_EMAIL}" >> $file


    else

        echo "GIT_ENABLE = False"
        echo "Skipping GIT config"

    fi

    echo "Writing remaining config into /var/wiki/config.yml"

    echo "
    # ---------------------------------------------------------------------
    # Features
    # ---------------------------------------------------------------------
    # You can enable / disable specific features below

    features:
    linebreaks: ${VAR_FT_LINE_BREAKS}
    mathjax: ${VAR_FT_MATHJAX}

    # ---------------------------------------------------------------------
    # External Logging
    # ---------------------------------------------------------------------

    externalLogging:
    bugsnag: ${VAR_EL_BUGSNAG_ENABLE}
    loggly: ${VAR_EL_LOGGLY_ENABLE}
    papertrail: ${VAR_EL_PAPERTRAIL_ENABLE}
    rollbar: ${VAR_EL_ROLLBAR_ENABLE}
    sentry: ${VAR_EL_SENTRY_ENABLE}

    # ---------------------------------------------------------------------
    # Color Theme
    # ---------------------------------------------------------------------

    theme:
    primary: ${VAR_THEME_PRIMARY}
    alt: ${VAR_THEME_ALT}
    viewSource: ${VAR_THEME_VIEWSOURCE}
    footer: ${VAR_THEME_FOOTER}
    code:
        dark: ${VAR_THEME_CODE_ENABLE}
        colorize: ${VAR_THEME_COLORIZE_ENABLE}

    #" >> $file


    echo "Wiki.js config completed"
fi

#debug
cat $file

