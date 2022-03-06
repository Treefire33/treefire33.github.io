var timesClicked = 0;
var button = document.getElementById("b").onclick = ClickThingie;
function ClickThingie()
{
  timesClicked+=1 
}
if(timesClicked==100)
{
  document.body.innerHTML='<p>Suprise! you get nothing!</p><p style="font-size: 12px">(You\'re still on a 404, go to the<a href="https://firetreegames.net">Home page</a>)</p>';
}
