#how to run process in background without nohup.out
#nohup command >/dev/null 2>&1 &

#EXPORT SECTION
export PATH=~/npm-global/bin:$PATH
export PATH=~/App/apache-maven-3.3.3/bin:$PATH

#ALIAS SECTION
alias webstorm='nohup /home/ychupryn/App/webstorm-11/bin/webstorm.sh >/dev/null 2>&1 &'

# Set Proxy
function setproxy() {
    export {http,https,ftp}_proxy="http://proxy.astelit.ukr:3128"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
}
