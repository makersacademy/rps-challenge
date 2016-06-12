require 'game'

describe Game do
  subject(:game) { described_class.new(args) }
  let(:args) {
    { "player_name" => "Steve", "player_item" => :rock, "computer_item" => :rock }
  }

  describe '#player_name' do
    it 'returns payer name' do
      expect(game.player_name).to eq 'Steve'
    end
  end

  describe '#player_item' do
    it 'returns player item' do
      expect(game.player_item).to eq :rock
    end
  end

  describe '#computer_item' do
    it 'returns computer item' do
      expect(game.computer_item).to eq :rock
    end
  end


end
