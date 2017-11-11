require 'player'

describe Player do

  subject(:player) { described_class.new('jo') }

  it '.name return player name' do
    expect(player.name).to eq('Jo')
  end

  it '.score return a default value' do
    expect(player.score).to eq(0)
  end
end
