require 'game'

describe Game do
  subject(:game) { described_class.new(:rock, :scissors) }
  let(:player_choice) { double(:player_choice) }
  let(:computer_choice) { double(:player_choice) }

  describe '#choices' do
    it "knows player's choice" do
      expect(game.player_choice).to eq :rock
    end
    it "knows computer's choice" do
      expect(game.computer_choice).to eq :scissors
    end
  end

end
