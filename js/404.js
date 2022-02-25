var timesClicked = 0;
var button = document.getElementById("b").onclick = ClickThingie;
function ClickThingie()
{
  timesClicked+=1 
  if(timesClicked==100)
  {
    document.body.innerHTML+="<p>Suprise! you get nothing!</p>";
  }
}
