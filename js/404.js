var step = [false, false, false, false, false, false];

$("#tT").click(function(){step[0] = true;});
$("#tO").click(function(){step[1] = true;});
$("#tM").click(function(){step[2] = true;});
$("#aA").click(function(){step[3] = true;});
$("#aD").click(function(){step[4] = true;});
$("#aAM").click(function(){step[5] = true;});

var timesClicked = 0;
$("#b").click(function(){
  timesClicked+=1 
  if(timesClicked==100)
  {
    document.body.innerHTML='<p>Suprise! you get nothing!</p><p style="font-size: 12px">(You\'re still on a 404, go to the<a href="https://firetreegames.net">Home page</a>)</p>';
  }
  if(step[0] == true && step[1] == true && step[2] == true && step[3] == true && step[4] == true && step[5] == true)
  {
    alert("You found the secret!");
    window.location = "https://firetreegames.net/puzzle/index.html";
  }
});
