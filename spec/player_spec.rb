require 'player'

describe Player do
  let(:player) { described_class.new('Player') }

  it 'return the name of the player' do
    expect(player.name).to eq 'Player'
  end
end
