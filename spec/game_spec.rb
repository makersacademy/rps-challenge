require 'game'

describe Game do

  let(:player) {double :player}
  subject(:game) {described_class.new(player)}

  it 'returns a players name' do
    allow(player).to receive(:return_name)
    expect(game.player_name).to eq player.return_name
  end

end
