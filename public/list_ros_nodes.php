<?php
function say_hello() {
$old_path = getcwd();
chdir('/home/simonthompson/work/ngss/ces2022/demo/ws/');
$output = shell_exec('./src/image_fullscreen_display/scripts/list_topics.sh 2>&1');
chdir($old_path);
return "$output";
}
?>

<?php
echo say_hello();
?>