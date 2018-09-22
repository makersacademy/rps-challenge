require 'weapons'

describe Weapons do
  subject(:weapons) { described_class.new }

  it 'contains the weapons a player can choose from' do
    expect(weapons.rack).to eq([:rock, :paper, :scissors])
  end

  describe '#available?' do
    it 'checks whether a weapon is available' do
      expect(weapons.available?(:rock)).to be(true)
      expect(weapons.available?(:lizard)).to be(false)
    end
  end

  describe '#random_select' do
    it 'returns a random weapon' do
      5.times { expect(weapons.rack).to include(weapons.random_select) }
    end
  end

end
