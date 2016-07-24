require 'Player'

describe Player do
  subject(:player) { described_class.new('Jess')}

  it 'has a name' do
    expect(player.name).to eq 'Jess'
  end

  # it 'the player selects a weapon' do
  #   expect(player.select_weapon("rock")).to eq :rock
  # end

end
