require 'game'
require 'player'

describe Player do

subject(:player) {described_class.new('Crooked Hilary')}

  describe '#name' do
    it 'has a name' do
      expect(subject.name).to eq 'Crooked Hilary'
    end
  end

  describe '#choose_weapon' do
    it 'can choose scissors' do
      subject.choose_weapon('scissors')
      expect(subject.weapon_choice).to eq :scissors
    end
  end

end
