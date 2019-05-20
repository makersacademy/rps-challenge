require './models/game.rb'

describe Game do

  let(:player_1) { Player.new('James') }

  subject(:game) { Game.new(player_1) }
  
  it "instantiates and creates a player object call player 1" do
    expect(game.player_1).to eq(player_1)
  end

  describe '#set_move' do
    it "sets the player move" do
      allow(player_1).to receive(:move).with("Scissors")
      game.set_move(player_1, "Scissors")
    end
    

  end
  
end