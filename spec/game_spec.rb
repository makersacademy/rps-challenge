require 'game'

describe Game do
  subject(:game) {described_class.new(player)}
  let(:player) {double :player}

  it 'returns a player instance' do
    expect(game.player_name).to eq player
  end

end
