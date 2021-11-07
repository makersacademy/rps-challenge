require './lib/turn'

describe Turn do
  subject(:turn) { described_class.new(options)} 
  let(:options) { {"player_name" => "Mohammed", "player_shape" => :rock, "opponent_shape" => :rock} }

  describe '#player_name' do
  it 'returns a player name' do
    expect(turn.player_name).to eq 'Mohammed'
  end

  describe '#player_shape' do
  it 'returns players shape' do
    expect(turn.player_shape).to eq :rock
  end

  describe '#opponent_shape' do
  it 'returns opponents shape' do
    expect(turn.opponent_shape).to eq :rock
  end
  end
end
end
end
   