Code runs as expected within BASH.

I placed the "nginx-access.log" file within the "/var/log/nginx" directory. This is were google told me the real log file ends up.

I had to alter the names of some of the lines that read "/ HTTP..." the spaces ended up throwing off the output.

If you were actually going to use this to analyse nginx logs you would want to go into the script and change the name of the log file to the approprate base name (access.log, I presume).
