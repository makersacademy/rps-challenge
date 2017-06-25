require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#weapon' do
    it 'returns a random weapon' do
      result = computer.weapon
      expect(Game::WEAPONS.include?(result)).to be true
    end
  end
end
