#!/bin/sh 

# PROVIDE: serenitynow
# REQUIRE: LOGIN
# KEYWORD: shutdown

. /etc/rc.subr 
name="serenitynow" 
rcvar=serenitynow_enable

command="/usr/local/bin/${name}" 

required_files="/usr/local/share${name}.sqlite" 

load_rc_config $name
run_rc_command "$1"
