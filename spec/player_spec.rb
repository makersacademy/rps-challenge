require 'player'

describe Player do
  subject(:player) { described_class.new('Ruby') }

  it 'returns the name of the player' do
    expect(player.name).to eq 'Ruby'
  end
end
