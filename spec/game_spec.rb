require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe '#computers_choice' do
    it "has options for the computer to randomly choose from" do
      expect(game.hand_shape_choices).to include(:rock, :paper, :scissors)
    end

    it "picks a random hand shape for the computer" do
      allow(game).to receive(:computers_choice).and_return(:scissors.to_s)
      expect(game.computers_choice).to eq "scissors"
    end
  end

  describe '#result' do
    it "knows the result by comparing the player's choice and the computer's choice" do

    end
  end

end
