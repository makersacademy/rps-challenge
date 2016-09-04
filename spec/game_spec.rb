require 'game'

describe Game do

  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new(player_1,player_2)}

  it 'returns a players name' do
    allow(player_1).to receive(:name)
    expect(game.player_1.name).to eq player_1.name
  end

end
