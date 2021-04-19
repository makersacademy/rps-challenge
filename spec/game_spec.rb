require 'game.rb'

describe Game do 
  it 'stores two players for playing the game' do 
    player1 = Player.new("player1")
    computer = Player.new("computer")
    game = Game.new(player1, computer)
    expect(game.player1.name).to eq("player1")
    expect(game.computer.name).to eq("computer")
  end
end
