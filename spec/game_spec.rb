require 'game'

describe Game do
  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#computer_decision' do
    it 'returns a decision' do
      expect(game.computer_decision).to eq("Rock") | eq("Paper") | eq("Scissors")
    end
  end 
end
