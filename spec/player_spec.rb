require 'player'

describe Player do

  subject(:player) { described_class.new('Jo') }

  it '.name return player name' do
    expect(player.name).to eq('Jo')
  end
end
