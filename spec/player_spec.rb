require 'player'

describe Player do

  subject(:player) { described_class.new("Chris") }

  it 'has a name' do
    expect(player.name).to eq 'Chris'
  end
end
