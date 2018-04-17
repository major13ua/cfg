#how to run process in background without nohup.out
#nohup command >/dev/null 2>&1 &

#EXPORT SECTION
export PATH=/opt/npm-global/bin:$PATH
export NPM_CONFIG_PREFIX=/opt/npm-global
export LIFERAY_HOME=/opt/liferay

#ALIAS SECTION
alias webStart='nohup /opt/webstorm/bin/webstorm.sh >/dev/null 2>&1 &'
alias ideaStart='nohup /opt/idea/bin/idea.sh >/dev/null 2>&1 &'

#Liferay
alias liferayStart='/opt/liferay/tomcat-7.0.62/bin/startup.sh'
alias liferayStop='/opt/liferay/tomcat-7.0.62/bin/shutdown.sh'
alias liferayLog='tail -f /opt/liferay/logs/edata.log'

#Docker
alias dps='docker ps -a'
alias pgStart='docker start local-postgres9.3.6'
alias pgStop='docker stop local-postgres9.3.6'

#Connections
alias spTest='ssh liferay@10.201.0.136'
alias spPreProd='ssh liferay@10.201.0.137'
alias spProd2='ssh liferay@10.201.0.146'
alias spProd1='ssh liferay@10.201.0.147'
alias spWS='ssh tomcat@10.201.0.152'
alias spWsPub='ssh tomcat@10.201.0.157'


# Set Proxy
function setproxy() {
    export {http,https,ftp}_proxy="http://proxy:3128"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
}

#fix FS

function fixFS() {
   sudo sysctl fs.inotify.max_user_watches=524288
   sudo sysctl -p --system
}
