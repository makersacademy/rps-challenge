require 'game'

describe Game do

  # how do I create a successful double for this?
  player = Player.new("Frances")
  subject(:game)  { described_class.new(player)   }

  describe '#initialize' do
    it 'instantiates a game with a Player object' do
      expect(subject.player).to be_an_instance_of Player
    end
  end

  describe '#view_choices' do
    it 'lists the choices available' do
      expect(game.view_choices).to eq [:Rock, :Paper, :Scissors]
    end
  end

  describe '#player_selection' do
    it "brings back the player's selection" do
      expect(game.player_selection(:Rock)).to eq :Rock
    end
  end

  describe '#computer_selection' do
    it "chooses a move randomly" do
      allow(game).to receive(:computer_selection).and_return(:Scissors)
      expect(game.computer_selection).to eq :Scissors
    end
  end

  describe '#result' do
    it "shows a draw (both chose rock)" do
      game.player_selection(:Rock)
      allow(game).to receive(:computer_selection).and_return(:Rock)
      expect(game.result).to eq "You both chose the same. It's a draw!"
    end
    it "selects the computer as winner (paper beats rock)" do
      game.player_selection(:Rock)
      allow(game).to receive(:computer_selection).and_return(:Paper)
      expect(game.result).to eq "Paper beats Rock. The winner is The Computer"
    end
    it "selects the player as winner (rock beats scissors)" do
      game.player_selection(:Rock)
      allow(game).to receive(:computer_selection).and_return(:Scissors)
      expect(game.result).to eq "Rock beats Scissors. The winner is Frances"
    end
    it "selects the player as winner (paper beats rock)" do
      game.player_selection(:Paper)
      allow(game).to receive(:computer_selection).and_return(:Rock)
      expect(game.result).to eq "Paper beats Rock. The winner is Frances"
    end
    it "shows a draw (both chose paper)" do
      game.player_selection(:Paper)
      allow(game).to receive(:computer_selection).and_return(:Paper)
      expect(game.result).to eq "You both chose the same. It's a draw!"
    end
    it "selects the computer as winner (paper, scissors)" do
      game.player_selection(:Paper)
      allow(game).to receive(:computer_selection).and_return(:Scissors)
      expect(game.result).to eq "Scissors beat Paper. The winner is The Computer"
    end
    it "selects the computer as winner (rock beats scissors)" do
      game.player_selection(:Scissors)
      allow(game).to receive(:computer_selection).and_return(:Rock)
      expect(game.result).to eq "Rock beats Scissors. The winner is The Computer"
    end
    it "selects the player as winner (scissors, paper)" do
      game.player_selection(:Scissors)
      allow(game).to receive(:computer_selection).and_return(:Paper)
      expect(game.result).to eq "Scissors beat Paper. The winner is Frances"
    end
    it "shows a draw (both chose scissors)" do
      game.player_selection(:Scissors)
      allow(game).to receive(:computer_selection).and_return(:Scissors)
      expect(game.result).to eq "You both chose the same. It's a draw!"
    end
  end

end
