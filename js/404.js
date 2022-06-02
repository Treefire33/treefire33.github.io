var step = 0;

$("#tT").click(function(){step += 1;});
$("#tO").click(function(){step += 1;});
$("#tM").click(function(){step += 1;});
$("#aA").click(function(){step += 1;});
$("#aD").click(function(){step += 1;});
$("#aAM").click(function(){step += 1;});

var timesClicked = 0;
$("#b").click(function(){
  timesClicked+=1 
  if(timesClicked==100)
  {
    document.body.innerHTML='<p>Suprise! you get nothing!</p><p style="font-size: 12px">(You\'re still on a 404, go to the<a href="https://firetreegames.net">Home page</a>)</p>';
  }
  if(step >= 5)
  {
    alert("Clicked Me");
    alert("You found the secret!");
    window.location = "https://firetreegames.net/puzzle/index.html";
  }
});
