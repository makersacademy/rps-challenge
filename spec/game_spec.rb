require 'game'

describe Game do
  let(:player) { double(:player, choice: 'rock') }
  let(:player2) { double(:player, choice: 'paper') }
  let(:game) { Game.new }
  
  it "is expected to have a player that you can add" do
    game.add_player player
    expect(game.players).to include player
  end

  it "should be able to create itself and be accessed through the class" do
    Game.create_game
    expect(Game.instance).to be_instance_of Game
  end

  it "should save a winner from two player's choices" do
    game.add_player player
    game.add_player player2
    game.find_winner
    expect(game.winner).to eq player2  
  end

 
end