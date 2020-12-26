<?php
if(isset($_REQUEST["le_date"])){
	if(!isset($_COOKIE["le_date"]) )
{
$nom_dat=$_REQUEST["le_date"];
$expir=time() + 2*30;
setcookie("le_date",$nom_dat,$expir);
}
else
{
$nom_dat=$_COOKIE['le_date'];

}

$dat=$_POST['le_date'];
			
$new_dat=strtotime($dat);
$jour=date("l",$new_dat);





$serveurBD="localhost";//le nom (ou adresse IP) du serveur où se trouve la base de données
$nomutilisateur="root";
$motdepasse="";// mot de passe de la base
$basededonnees="restaurant";//nom de base de données
$idconx=mysqli_connect($serveurBD,$nomutilisateur,$motdepasse)
	or die ("imposible de connecter sur le seveur BD<br/>");

@mysqli_select_db($idconx,$basededonnees)
	or die("imposible de connecter sur le BD<br/>");

		
			$sql="SELECT nom_jours , nom_plat , prix FROM jours j JOIN menu_de_jours m ON j.id_jours=m.id_jours JOIN plats p ON m.id_plat=p.id_plat WHERE nom_jours='$jour'";
			$retour=mysqli_query($idconx,$sql);
			$x="";
			$y="";
			if ($retour==false){ echo "la requete a echoue";}
				else{  
				
				while($enreg=mysqli_fetch_array($retour))
				{
				
					$x=$x." ".$enreg["nom_plat"];
					
					 $y=$y." ".$enreg["prix"];						
				}
				$ch=preg_split("/ /",$x);
				$ch1=preg_split("/ /",$y);
				
					
			
			?>
						<h1>que voulez vous manger</h1>
			<input type="checkbox" id="c1" value=<?php echo $ch1[1]; ?>><?php echo $ch[1];?><br/>
			<input type="checkbox" id="c2" value=<?php echo $ch1[2]; ?>><?php echo $ch[2];?><br/>
			<input type="checkbox" id="c3" value=<?php echo $ch1[3]; ?>><?php echo $ch[3]; ?><br/>
			<input type="checkbox" id="c4" value=<?php echo $ch1[4]; ?>><?php echo $ch[4]; ?><br/>
	
			<?php	
			}
			mysqli_close($idconx);
		}
	
		
	
			

	  
			
		 






?>