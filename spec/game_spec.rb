require 'game'

describe Game do
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new(player_1, player_2)}

  it 'has a constant with weapon options' do
    expect(described_class::WEAPON).to eq [:rock, :paper, :scissors]
  end
  
  it 'returns player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'returns player 2' do
    expect(game.player_2).to eq player_2
  end
end
