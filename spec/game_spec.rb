require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#player'do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe '#computers_choice' do
    it "has options for the computer to randomly choose from" do
      expect(game.hand_shape_choices).to include(:rock, :paper, :scissors)
    end

    it "picks a random hand shape for the computer" do
      allow(game).to receive(:computers_choice).and_return(:scissors.to_s)
      expect(game.computers_choice).to eq "scissors"
    end
  end
end
