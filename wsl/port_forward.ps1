$IP = (wsl -e hostname -I).TrimEnd()
netsh.exe interface portproxy delete v4tov4 listenport=22
netsh.exe interface portproxy add    v4tov4 listenport=22 connectaddress=$IP
netsh.exe interface portproxy delete v4tov4 listenport=3390
netsh.exe interface portproxy add    v4tov4 listenport=3390 connectaddress=$IP
netsh.exe interface portproxy delete v4tov4 listenport=8080
netsh.exe interface portproxy add    v4tov4 listenport=8080 connectaddress=$IP
netsh.exe interface portproxy delete v4tov4 listenport=8888
netsh.exe interface portproxy add    v4tov4 listenport=8888 connectaddress=$IP
netsh.exe interface portproxy delete v4tov4 listenport=8889
netsh.exe interface portproxy add    v4tov4 listenport=8889 connectaddress=$IP
netsh.exe interface portproxy delete v4tov4 listenport=8890
netsh.exe interface portproxy add    v4tov4 listenport=8890 connectaddress=$IP
