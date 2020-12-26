<?php			
if((empty($_REQUEST["nom_p"])) || (empty( $_REQUEST["tele"]))  ){echo " <script> alert('completer svp');</script>";}
else{
    $nom_dat=$_COOKIE['le_date'];
	$nom_p=$_POST["nom_p"];
	$tele=$_POST["tele"];
	


$serveurBD="localhost";//le nom (ou adresse IP) du serveur où se trouve la base de données
$nomutilisateur="root";
$motdepasse="";// mot de passe de la base
$basededonnees="restaurant";//nom de base de données
$idconx=mysqli_connect($serveurBD,$nomutilisateur,$motdepasse)
	or die ("imposible de connecter sur le seveur BD");
	@mysqli_select_db($idconx,$basededonnees)
	or die("imposible de connecter sur le BD<br/>");

$sql="INSERT INTO client (`nom_p`,`tele`,`date`) values ('".$nom_p."','".$tele."','".$nom_dat."')";
$retour=mysqli_query($idconx,$sql);
$sql2="INSERT INTO reservation (`nom_p`,`tele`,`date`) values ('".$nom_p."','".$tele."','".$nom_dat."')";
$reslt=mysqli_query($idconx,$sql2);
if ($retour==true && $reslt==true)
{ echo'<script>alert("reservation valider");</script>';}

mysqli_close($idconx);

}
		  
			
		 






?>