require 'game'

describe Game do
  let(:player) { double :player }
  let(:game) { Game.new }
  
  it "is expected to have a player that you can add" do
    game.add_player player
    expect(game.players).to include player
  end

  it "should be able to create itself and be accessed through the class" do
    Game.create_game
    expect(Game.instance).to be_instance_of Game
  end

 
end