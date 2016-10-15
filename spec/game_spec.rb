require 'Game'

describe Game do

  describe '#view_choices' do
    it 'lists the choices available' do
      expect(subject.view_choices).to eq [:Rock, :Paper, :Scissors]
    end
  end

  describe '#player_selection' do
    it "brings back the player's selection" do
      expect(subject.player_selection(:Rock)).to eq :Rock
    end
  end

  describe '#computer_selection' do
    it "chooses a move randomly" do
      allow(subject).to receive(:computer_selection).and_return(:Scissors)
      expect(subject.computer_selection).to eq :Scissors
    end
  end

end
