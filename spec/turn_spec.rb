require 'turn'
# refactoring here for all atrr reader and just use @turn instead
describe Turn do
  subject(:turn) {described_class.new(options) }
  let(:options) { {"player_name" => "Barri", "player_shape" => :rock,"opponent_shape" => :rock} }

  describe '#player_name' do
    it 'returns player name' do
    expect(turn.player_name).to eq 'Barri'
  end
end

  describe '#player_shape' do
    it 'returns player shape' do
    expect(turn.player_shape).to eq :rock
  end
end
  describe '#opponent_shape' do
    it 'returns opponent shape' do
    expect(turn.opponent_shape).to eq :rock
    end
  end
end