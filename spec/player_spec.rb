require 'player'

describe Player do
  subject(:player) { Player.new('Mabon') }

  it 'expect player to return a name when called' do
    expect(player.name).to eq 'Mabon'
  end
end