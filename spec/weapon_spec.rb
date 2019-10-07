require 'weapon'

describe Weapon do

  describe '#choice' do
    it 'represents a choice' do
      weapon = described_class.new('rock')
      expect(weapon.choice).to eq 'rock'
    end
  end

  describe '#self.create' do
    it 'creates a new instance of self' do
      expect(Weapon.create('paper')).to be_an_instance_of described_class
    end
  end

  describe '#self.instance' do
    it 'allows us to access an instance of the class' do
      weapon = Weapon.create('paper')
      expect(Weapon.instance).to eq weapon
    end
  end

end
