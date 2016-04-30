require 'player'

describe Player do
  let(:player) { described_class.new('Player') }

  it 'returns the player name' do
    expect(player.name).to eq 'Player'
  end
end
