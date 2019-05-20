require './models/game.rb'

describe Game do

  let(:player_1) { Player.new('James', 'scissors') }

  subject(:game) { Game.new(player_1) }
  
  it "instantiates and creates a player object call player 1" do
    expect(game.player_1).to eq(player_1)
  end
  
end