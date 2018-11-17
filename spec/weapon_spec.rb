require 'weapon'

describe Weapon do

  describe '#type' do
    it 'has a type' do
      weapon = described_class.new("rock")
      expect(weapon.type).to eq "rock"
    end
  end

  describe '#self.create' do
    it 'created a new instance of self' do
      expect(Weapon.create("paper")).to be_an_instance_of described_class
    end
  end

  describe '#self.instance' do
    it 'allows us to access an instance of Player' do
      new_weapon = Weapon.create("scissor")
      expect(Weapon.instance).to eq new_weapon
    end
  end

end
