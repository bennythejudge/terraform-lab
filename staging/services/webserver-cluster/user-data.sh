#!/bin/bash
car > index.html << EOF
<html>
<h1>Hello, World $(hostname)</h1>
<br>
<h2>DB url: ${db_address}<h2>
<h2>DB port: ${db_port}<h2>
EOF

nohup busybox httpd -f -p "${server_port}" &