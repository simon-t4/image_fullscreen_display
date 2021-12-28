<?php
function stop_rebo() {
$old_path = getcwd();
chdir('/home/simonthompson/work/ngss/ces2022/demo/ws/src/image_fullscreen_display/scripts');
exec('./stop_rebo.sh 2>/dev/null >/dev/null &');
chdir($old_path);
}
?>

<?php
stop_rebo();
?>