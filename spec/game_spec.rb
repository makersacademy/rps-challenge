require 'game'

describe 'Game' do 
  
  let(:player) { Player.new("Ben") }
  let(:player2) { Player.new("Leonidas") }
  let(:game) { Game.new(player, player2) }
  let(:game_move) { double :game}

  it "initializes with player object as an argument" do
    expect(game.players.flatten).to eq([player, player2])
  end

  describe '#player_1' do 
    it "returns the first player element in the players array" do 
      expect(game.player_1).to eq player
    end
  end
  
  describe '#player_2' do 
    it "returns the last player element in the players array" do 
      expect(game.player_2).to eq player2
    end
  end

  describe '#player_chooses' do
    it "accepts the players choice as an argument and stores it to determine the winner" do
      game.player_chooses("Rock")
      expect(game.player_move).to eq "Rock"
    end 
  end

  describe '#computer_chooses' do
    it "accepts the computers choice as an argument and stores it to determine the winner" do
      game.computer_chooses("Paper")
      expect(game.computer_move).to eq "Paper"
    end 
  end
end