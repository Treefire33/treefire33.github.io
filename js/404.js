var timesClicked = 0;
var button = document.getElementById("b").onclick = function(){timesClicked+=1 if(timesClicked==100){document.getElementById("b").innerHTML="<p>Suprise! you get nothing!</p>";}}
