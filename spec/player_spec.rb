require 'player'

describe Player do
  subject(:player) { described_class.new('MeRo') }

  describe 'initialize' do
    it 'initializes with a name parameter and stores user name' do
      expect(player.name).to eq 'MeRo'
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
      expect { player.weapon_choice('bum') }.to raise_error "Don't bring a bum to a rock, paper, scissors, fight"
    end
  end
  describe '#weapon_to_s' do
    it 'returns weapon as upcase string' do
      player.weapon_choice('Scissors')
      expect(player.weapon_to_s).to eq 'SCISSORS'
    end
  end
end