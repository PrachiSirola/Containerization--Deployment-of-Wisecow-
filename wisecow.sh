#!/bin/bash
# Wisecow Application - Simple Web Server with Fortune & Cowsay

while true; do
  # Serve fortune + cowsay message on port 4499
  echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n$(fortune | cowsay)" | nc -l -p 4499 -q 1
done
