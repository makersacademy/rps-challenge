require 'game'

describe Game do
  let(:game) { Game.new }
  describe '#computer_move' do
    it "can return a random move" do
      game_double = double :game, :cpu_move => "Paper"
      allow(game_double).to receive(:computer_move) { "Paper" }
      expect(game_double.cpu_move).to eq "Paper"
    end
  end

  describe '#winner' do
    it "can return 'Win'" do
      game_double = double :game, :cpu_move => "Paper"
      player_move = "Scissors"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Win"
    end
  end

end
