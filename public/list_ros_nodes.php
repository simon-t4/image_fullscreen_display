<?php
function say_hello() {
$old_path = getcwd();
chdir('/home/tier4/ces2022/ws/');
$output = shell_exec('./src/image_display/scripts/list_topics.sh 2>&1');
chdir($old_path);
return "$output";
}
?>

<?php
echo say_hello();
?>