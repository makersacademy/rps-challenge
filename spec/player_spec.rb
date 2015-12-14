require 'player'

describe Player do
  subject(:player) { described_class.new(:name) }
  let(:rock) { double (:weapon) }


  it 'returns the player name' do
   expect(player.name).to eq :name
  end

  describe '#weapon_choice'
  it 'allows the player to select a weapon' do
    player.choose_weapon(:rock)
    expect(player.weapon_choice).to eq :rock
  end

end
