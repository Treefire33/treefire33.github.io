alert("You are about to start the game.")
function Start() 
{
  var x = document.getElementById("Game");
  var y = document.getElementById("OP");
  if (x.innerHTML === "Waiting.") {
    x.innerHTML = "Thank you for starting";
	y.innerHTML = "<button>BOOM</button>"
  }
}