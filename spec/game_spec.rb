require 'game'

describe Game do

  let(:player) {double :player}
  subject(:game) {described_class.new(player)}

  it 'returns a players name' do
    allow(player).to receive(:name)
    expect(game.player.name).to eq player.name
  end

end
