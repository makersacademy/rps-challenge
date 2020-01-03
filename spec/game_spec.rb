require 'game'

describe 'Game' do 
  
  let(:player) { Player.new("Ben") }
  let(:player2) { Player.new("Leonidas") }
  let(:game) { Game.new(player, player2) }

  describe '.player_1' do 
    it "returns the first player element in the players array" do 
      expect(game.player_1).to eq player
    end
  end
  
  describe '.player_2' do 
    it "returns the last player element in the players array" do 
      expect(game.player_2).to eq player2
    end
  end

  describe '.player_choose' do
    it "determines the players move with a given sign" do
      game.player_choose("paper")
      expect(game.player_move).to eq "paper"
    end
  end

  describe '.computer_choose' do
    it "determines the computers move through a given sign or randomly if no sign is given" do
      game.computer_choose("paper")
      expect(game.computer_move).to eq "paper"
    end
  end

  describe '.winner' do
    it 'returns the winners name, or draw if the game is a draw' do
      game.computer_choose("rock")
      game.player_choose("scissors")
      expect(game.winner).to eq "Computer"
    end
  end
end
