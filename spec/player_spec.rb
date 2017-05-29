require 'player'

describe Player do
  subject(:player) { described_class.new('Kavita') }

  it 'player should have a name' do
    expect(player.name).to eq 'Kavita'
  end

  describe 'choose weapon' do
    it 'allow player should choose a weapon' do
      player.choose_weapon(:rock)
      expect(player.weapon).to eq :rock
    end

    it 'raises error if player chooses invalid weapon' do
      expect { player.choose_weapon(:potato) }.to raise_error('Not valid weapon')
    end
  end

end
