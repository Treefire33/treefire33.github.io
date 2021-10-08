math.randomseed(os.clock()*100000000000000000)
local tryagain = false
function GameEasy()
  local numG = math.random(1,10)
  io.write("(hint! the number is between "..tostring(numG - math.random(1,2)).." and "..tostring(numG + math.random(1,2))..")\n")
  local Gnum = tonumber(io.read())
  if(Gnum == numG)then
    io.write("Great Job! You guessed correctly!\n")
    tryagain = true
  else
    io.write("Try again!\n")
    tryagain = true
  end
end
function GameMedium()
  local numG = math.random(1,50)
  io.write("(hint! the number is between "..tostring(numG - math.random(4,8)).." and "..tostring(numG + math.random(4,8))..")\n")
  local Gnum = tonumber(io.read())
  if(Gnum == numG)then
    io.write("Great Job! You guessed correctly!\n")
    tryagain = true
  else
    io.write("Try again!\n")
    tryagain = true
  end
end
function GameHard()
  local numG = math.random(1,100)
  io.write("(hint! the number is between "..tostring(numG - math.random(10,20)).." and "..tostring(numG + math.random(10,20))..")\n")
  local Gnum = tonumber(io.read())
  ::CHEATLooP::
  if(Gnum == numG)then
    io.write("Great Job! You guessed correctly!\n")
    tryagain = true
  elseif Gnum == 69420666 then
    io.write("The number is "..numG.." ,Cheater :[\n")
    Gnum = tonumber(io.read())
    goto CHEATLooP
  else
    io.write("Try again!\n")
    tryagain = true
  end
end
function GameImpossible()
  local numG = math.random(1,1000)
  io.write("hint! No hints\n")
  local Gnum = tonumber(io.read())
  if(Gnum == numG)then
    io.write("Great Job! You guessed correctly!\n")
    tryagain = true
  else
    io.write("Try again!\n")
    tryagain = true
  end
end
::GameLoop::
io.write("Welcome to Guess The Number! \n 1: Play \n 2: Help \n")
mode = io.read()
if mode:lower() == "play" then
  io.write("Choose between: \n Easy \n Medium \n Hard \n Impossible \n")
  truemode = io.read()
  if truemode:lower() == "easy" then
    io.write("Guess a number between 1 and 10!\n")
    GameEasy()
  elseif truemode:lower() == "medium" then
    io.write("Guess a number between 1 and 50!\n")
    GameMedium()
  elseif truemode:lower() == "hard" then
    io.write("Guess a number between 1 and 100!\n")
    GameHard()
  elseif truemode:lower() == "impossible" then
    io.write("Guess a number between 1 and 1000!\n")
    GameImpossible()
  end
  while true do
    if tryagain then
      goto GameLoop
    end
  end
elseif mode:lower() == "help" then
  io.write("Its pretty simple honestly, just guess a number!\n")
  goto GameLoop
end