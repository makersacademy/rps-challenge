require 'player'

describe Player do
  subject(:player_1) { Player.new("Alice") }

  it 'should have a name' do
    expect(player_1.name).to eq "Alice"
  end

  it 'can choose a weapon' do
    player_1.choose_weapon("ROCK")
    expect(player_1.weapon).to eq "ROCK"
  end
end
