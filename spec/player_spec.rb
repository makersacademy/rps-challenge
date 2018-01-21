require 'player'

describe Player do
  subject(:player) { described_class.new('Leigh-ann') }

  describe 'initialize' do
    it 'initializes with a name parameter and stores user name' do
      expect(player.name).to eq 'Leigh-ann'
    end
  end
  
  describe '#weapon_choice(choice)' do
    it 'returns player weapon choice' do
      expect(player.weapon_choice('Rock')).to eq :rock
    end
    it 'stores player weapon choice' do
      player.weapon_choice('Scissors')
      expect(player.weapon).to eq :scissors
    end
    it 'raises error if weapon provides is not :rock, :paper, or :scissors' do
      expect { player.weapon_choice('gun') }.to raise_error "Not a allowed weapon choice"
    end
  end
  describe '#weapon_to_s' do
    it 'returns weapon as upcase string' do
      player.weapon_choice('Scissors')
      expect(player.weapon_to_s).to eq 'SCISSORS'
    end
  end
end
