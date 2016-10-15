require 'Game'

describe Game do

  let(:frances)   { double :player, name: "Frances" }
  subject(:game)  { described_class.new(:frances)   }

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
    it "selects a winner (or determines a draw) according to the rules" do
      game.player_selection(:Rock)
      allow(game).to receive(:computer_selection).and_return(:Scissors)
      expect(game.result).to eq "The winner is Frances"
    end
  end

end
