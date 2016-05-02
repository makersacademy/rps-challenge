require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { { player: "Maria", player_option: :rock, computer_option: :rock } }

  describe "#player" do
    it 'returns players name' do
      expect(turn.player).to eq "Maria"
    end
  end

  describe "#player_option" do
    it 'returns players option' do
      expect(turn.player_option).to eq :rock
    end
  end

  describe "#computer_option" do
    it "returns computers option" do
      expect(turn.computer_option).to eq :rock
    end
  end
end
