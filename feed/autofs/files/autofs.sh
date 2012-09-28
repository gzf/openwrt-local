#!/bin/sh
#
# Author: Zhifeng Gu <guzhifeng1979@hotmail.com>
# Date: 2012/03
# License: GPL

AUTOMOUNT_PIDFILE=/var/run/automount.pid

is_running() {
    if [ ! -e $AUTOMOUNT_PIDFILE ]; then
        return 1
    fi
    ps | grep -q -e "^[ ]*`cat $AUTOMOUNT_PIDFILE`"
    return $?
}

reload_config() {
    kill -HUP `cat $AUTOMOUNT_PIDFILE`
}
