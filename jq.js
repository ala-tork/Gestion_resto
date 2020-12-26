$(document).ready(function(){ 
	$("#bu").click(function(){
		verif();
	});

$("#s").on("change",function(){
	var image="<img src='img/1.jpg' width='200' height='200'>";
	$('#d1').empty();	
	for(var i=1	;i<=$("#s").val();i++){
		$("#d1").fadeIn(3000,function(){
			$("#d1").html($("#d1").html()+image);
		});
	}

});






function verif(){
	if($("#dat").val()==''){
		alert("veuillez choisir le date");
		return false;
	}

	if($("#s").val()=='0'){
		alert("veuillez choisir le nombre de personne");
		return false;
	}

	if(($("#nom_p").val()=="")||$("#nom_p").val().length <10){
		alert("le nom et prenom doit étre compesser au minimom par 10 caractere");
		return false;
	}
	if(!isNaN($("#t").val())&&$("#t").val().length !=8){
		alert("le numero de telephone et compesser par 8 chiffre");
		return false;
	}
	if($("#r").val()=='0'){
		alert("veuillez choisir votre civiliter svp");
		return false;
	}

	if($('input[name=r]:checked').val() || '')
	{}
else {alert("chisir votre civiliter svp");return false;}


c1=$("#c1").val();
c1=parseFloat(c1);
c2=$("#c2").val();
c2=parseFloat(c2);
c3=$("#c3").val();
c3=parseFloat(c3);
c4=$("#c4").val();
c4=parseFloat(c4);
var s=0;


a=$("#s").val();
x=parseFloat(a);
s=s*a;


if($('#c1').is(':checked')){ s=s+c1;}
if($('#c2').is(':checked')){ s=s+c2;}
if($('#c3').is(':checked')){ s=s+c3;}
if($('#c4').is(':checked')){ s=s+c4;}

var somme=s+"dt";
$("#prix").html(somme);
var messg="<hr/><p><h3>bonjour</h3> <br/> "+$("input[name=r]:checked").val() + " "+$("#nom_p").val()+"</p>";
messg=messg+"<p>vous commendez : </p>";

$('input[type="checkbox"]').each(function(){
	if(this.checked){messg=messg+$("this").val()+"<br/>"}
});
messg=messg+"le montant total de la comande est de"+somme+"<hr/>";
$("#d2").html(messg);
}
	


});