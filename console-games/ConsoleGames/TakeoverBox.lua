math.randomseed(os.clock()*100000000000)
local Game = {bS, curTable}
function Game:new(b)
  local game = {
    bS = b,
    curTable = {""}
  }
  function game.CreateBoard()
    local total = 1
    for i = 0, game.bS-1, 1 do
        for ii = 0, game.bS-1, 1 do
            game.curTable[total] = "☐"
            io.write(game.curTable[total])
            total = total + 1
        end
        io.write("\n")
    end
    io.write("________________________________\n")
  end
  function game.ReloadBoard()
    local total = 1
    for i = 0, game.bS-1, 1 do
        for ii = 0, game.bS-1, 1 do
            io.write(game.curTable[total])
            total = total + 1
        end
        io.write("\n")
    end
    io.write("________________________________\n")
  end
  function game.PlacePeice(c)
    if game.curTable[c] ~= "0" and game.curTable[c] ~= nil then
        game.curTable[c] = "0"
        game.ReloadBoard()
    else
        io.write("Invaild Place\n")
        game.ReloadBoard()
    end
  end
  function game.BotTurn()
    local rand = math.random(1,#game.curTable)
    local totaltime = 0
    if game.curTable[rand] ~= "O" then
        game.curTable[rand] = "O"
        io.write("Bot placed at square "..tostring(rand).."\n")
        game.ReloadBoard()
        return true
    else
        return false
    end
  end
  return game
end

::GameLoop::
io.write("Board Size?\n")
local nGame = Game:new(tonumber(io.read()))
nGame.CreateBoard(nGame.bS)
for i = 0, nGame.bS*nGame.bS, 1 do
	io.write("Where would you like to place a peice?\n")
	io.write("________________________________\n")
	place = io.read()
	io.write("Placed at square "..tostring(place).."\n")
	nGame.PlacePeice(tonumber(place))
	io.write("Its the bots turn now!\n")
	io.write("________________________________\n")
	if(nGame.BotTurn(nGame)) then
        --Its cool
    else
       io.write("The bot couldn't think of another place\n")
       nGame.ReloadBoard()
    end
end
local yours = 0
local bots = 0
for i = 1, nGame.bS*nGame.bS, 1 do
    if(nGame.curTable[i] == "0") then
        yours = yours + 1
    end
    if(nGame.curTable[i] == "O") then
        bots = bots + 1
    end
end
io.write("Current score is: \n You: "..tostring(yours).."\n Bot: "..tostring(bots).."\n")

io.write("Replay? y/n \n")
i = io.read()
if i == "y" then
  goto GameLoop
end