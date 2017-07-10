#how to run process in background without nohup.out
#nohup command >/dev/null 2>&1 &

#EXPORT SECTION
export PATH=/opt/npm-global/bin:$PATH
export NPM_CONFIG_PREFIX=/opt/npm-global
export LIFERAY_HOME=/opt/liferay

#ALIAS SECTION
#alias webstorm='nohup /opt/webstorm/bin/webstorm.sh >/dev/null 2>&1 &'

# Set Proxy
function setproxy() {
    export {http,https,ftp}_proxy="http://proxy:3128"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
}
