<?php
function start_rebo() {
$old_path = getcwd();
#$rebo_path = getenv("REBO_WS");
$rebo_path = "/home/tier4/ces2022/ws";
#chdir('/home/simonthompson/work/ngss/ces2022/demo/ws');
chdir($rebo_path);
exec('export DISPLAY=:0; ./src/image_display/scripts/start_rebo.sh 2>/dev/null >/dev/null &');
chdir($old_path);
}
?>

<?php
start_rebo();
?>