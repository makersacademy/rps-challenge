require 'game'
require 'player'

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
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Won"
    end
  end

  describe '#Rock, Paper, Scissors, Lizard, Spock' do
    it "can return 'Win' if p1 uses Rock and p2 uses Lizard" do
      game_double = double :game, :cpu_move => "Lizard"
      player_move = "Rock"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Won"
    end

    it "can return 'Win' if p1 uses Spock and p2 uses Scissors" do
      game_double = double :game, :cpu_move => "Scissors"
      player_move = "Spock"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Won"
    end

    it "can return 'Win' if p1 uses Lizard and p2 uses Spock" do
      game_double = double :game, :cpu_move => "Spock"
      player_move = "Lizard"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Won"
    end

    it "can return 'Win'id p1 uses Paper and p2 uses Spock" do
      game_double = double :game, :cpu_move => "Spock"
      player_move = "Paper"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Won"
    end

    it "can return 'Drew' if p1 and p2 use Spock" do
      game_double = double :game, :cpu_move => "Spock"
      player_move = "Spock"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Drew"
    end

    it "can return 'Drew' if p1 and p2 use Lizard" do
      game_double = double :game, :cpu_move => "Lizard"
      player_move = "Lizard"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Drew"
    end

    it "can return 'Lost' if p2 uses Spock and p1 uses Scissors" do
      game_double = double :game, :cpu_move => "Spock"
      player_move = "Scissors"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Lost"
    end

    it "can return 'Lost' if p1 uses Rock and p2 uses Spock" do
      game_double = double :game, :cpu_move => "Spock"
      player_move = "Rock"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Lost"
    end

    it "can return 'Win'id p1 uses Paper and p2 uses Lizard" do
      game_double = double :game, :cpu_move => "Lizard"
      player_move = "Paper"
      expect(game.winner(player_move, game_double.cpu_move)).to eq "Lost"
    end

    describe "#win_message" do
      let(:player_double) { double :player, :name => "Ryu", :name2 => "Ken",
                            :move => "Spock", :move2 => "Paper" }

      it "can output a losing message" do

      end

      it "can output a draw message" do

      end
    end

  end

end
