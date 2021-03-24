require './lib/weapon.rb'

describe Weapon do
  let(:test_weapon) { Weapon.new }
  it 'generates a random weapon' do
    expect(test_weapon.weapons).to eq [:rock, :paper, :scissors]
  end
  describe '#choose' do
    it 'generates a random weapon' do
      srand(4)
      expect(test_weapon.choose).to eq :scissors
    end
  end
end
