require './models/game.rb'

describe Game do

  let(:player_1) { Player.new('James', nil) }

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

  describe '#result' do

    it 'decides the outcome of the game - player 1 wins' do
      expect(game.result("Scissors", "Paper")).to eq "James wins"
    end

    it 'decides the outcome of the game - player 2 wins' do
      expect(game.result("Rock", "Paper")).to eq "Clive the computer wins"
    end

    it 'decides the outcome of the game - draw' do
      expect(game.result("Scissors", "Scissors")).to eq "It's a draw"
    end
    
  end
  
end