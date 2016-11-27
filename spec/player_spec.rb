require 'player'

describe Player do
  subject(:player) { described_class.new('player name') }

  it 'should be intialized with a variable name' do
    expect(player.name).to eq 'player name'
  end

end
