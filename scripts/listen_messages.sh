sudo kill -9 `sudo lsof -t -i:7777`
sudo kill -9 `sudo lsof -t -i:7788`
socat -u tcp-l:7777,fork system:./src/image_display/scripts/listen_start.sh &
socat -u tcp-l:7788,fork system:./src/image_display/scripts/listen_stop.sh &
