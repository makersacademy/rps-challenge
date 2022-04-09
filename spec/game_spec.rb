require_relative '../lib/game'

describe Game do
  let(:player_double) { double(:player, name: "Joe") }
  let(:computer_double) { double(:computer_player, name: "Computer", random_choice: "Scissors") }
  let(:game) { Game.new(player_double, computer_double) }
  let(:computer_choice) { computer_double.random_choice }

  context "#creation" do
    it "has two players, 1 person and the computer" do
      expect(game.player).to eq "Joe"
      expect(game.com).to eq "Computer"
    end
  end

  context "#compare both players choice to declare" do
    it "the player the winner" do
      player_choice = "Rock"
      expect(game.compare(player_choice, computer_choice)).to eq "Joe wins!"
    end

    it "the computer the winner" do
      player_choice = "Paper"
      expect(game.compare(player_choice, computer_choice)).to eq "Computer wins!"
    end

    it "a draw" do
      player_choice = "Scissors"
      expect(game.compare(player_choice, computer_choice)).to eq "It's a draw."
    end
  end
end
