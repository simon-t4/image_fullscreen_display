<?php
function stop_rebo() {
$old_path = getcwd();
chdir('/home/tier4/ces2022/ws/src/image_display/scripts');
exec('./stop_rebo.sh 2>/dev/null >/dev/null &');
chdir($old_path);
}
?>

<?php
stop_rebo();
?>