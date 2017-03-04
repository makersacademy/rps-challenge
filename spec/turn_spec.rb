require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Noora", "player_shape" => :rock, "opponent_shape" => :rock} }

  describe '#player_name' do
    it 'returns the player name' do
      expect(turn.player_name).to eq "Noora"
    end
  end

  describe '#player_shape' do
    it 'returns the player shape' do
      expect(turn.player_shape).to eq :rock
    end
  end

  describe '#opponent_shape' do
    it 'returns the opponent shape' do
      expect(turn.opponent_shape).to eq :rock
    end
  end
end
