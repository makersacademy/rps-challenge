require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { { "player_name" => "Ron", "player_shape" => :rock, "opponent_shape" => :rock }}

  describe '#player_name' do
    it 'returns player name' do
      expect(turn.player_name).to eq 'Ron'
    end
  end
end
