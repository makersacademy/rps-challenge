require 'turn'

describe Turn do
  subject(:turn) {described_class.new(options)}
  let(:options) { {:player_name => "Morgan", :player_move => :rock, :opponent_move => :rock}}

  describe '#player_name' do
    it 'returns player name' do
      expect(turn.player_name).to eq 'Morgan'
    end
  end

  describe '#player_move' do
    it 'returns player move' do
      expect(turn.player_move).to eq :rock
    end
  end

  describe '#opponent_move' do
    it 'returns opponent move' do
      expect(turn.opponent_move).to eq :rock
    end
  end
end
