require 'player'

describe Player do
  subject(:player_1) { Player.new("Alice") }

  it 'should have a name' do
    expect(player_1.name).to eq "Alice"
  end

  it 'can choose a weapon' do

  end
end
