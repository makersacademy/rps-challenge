require 'Player'

describe Player do
  subject(:player) { described_class.new }

  it 'the player selects a weapon' do
    player.select_weapon("rock")
    expect(player.weapon).to eq :rock
  end

end
