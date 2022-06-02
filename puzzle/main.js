$("#secondPuzzle").hide();
$("#thirdPuzzle").hide();
$("#fourthPuzzle").hide();
$("#fifthPuzzle").hide();
$("#link").hide();

$("#fpS").click(function(){
  if($("#fpA").val() == "Tom")
  {
    alert("Correct!");
    $("#firstPuzzle").hide();
    $("#secondPuzzle").show();
  }
});

$("#spS").click(function(){
  if($("#spA").val() == "4" || $("#spA").val() == "5")
  {
    alert("Correct!");
    $("#secondPuzzle").hide();
    $("#thirdPuzzle").show();
  }
});

$("#tpS").click(function(){
  if($("#tpA").val() == "225")
  {
    alert("Correct!");
    $("#thirdPuzzle").hide();
    $("#fourthPuzzle").show();
  }
});

$("#fopS").click(function(){
  if($("#fopA").val() == "Treefire33")
  {
    alert("Correct!");
    $("#fourthPuzzle").hide();
    $("#fifthPuzzle").show();
  }
});

$("#fipS").click(function(){
  if($("#fipA").val() == "Whatever happened to Timmy Adams fortune?")
  {
    alert("Correct! You can now play the game!");
    $("#fifthPuzzle").hide();
    $("#link").show();
  }
});