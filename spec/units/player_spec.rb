require 'player'

describe Player do
  subject(:player) { described_class.new('Player1') }

  it 'sets player name' do
    expect(player.name).to eq('Player1')
  end
end
