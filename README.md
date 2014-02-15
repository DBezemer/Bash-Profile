Bash-Profile
============

Bash files for extra CLI stufff

## Usage instructions
Place the files from nanorc in /usr/share/nanorc
Place all other files either in /root (if you're using root) or in your home directory

## What these files do
The bash profile files do the following:
- start every session in screen for unreliable connections
- dropped sessions will automatically reconnect when you login again
- on connect it displays which system you logged on, a calendar, and your username
- the title bar gets filled with the current server load, uptime and # of logged in users (updated every 10 seconds)
- write commands directly to history instead of at logout
- increase your history size
- set editor to nano as default

The screenrc settings are as following:
- full CLI output is logged in screen-logs
