require 'computer'
require 'game'

describe Computer do
  subject(:computer) { described_class.new }
  describe '#weapon' do
    it 'returns a random weapon' do
      expect(Game::WEAPONS.include?(computer.weapon)).to eq(true)
    end
  end
end
