require 'game'
require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#weapon' do
    it 'select a random weapon' do
      expect(Game::WEAPONS).to include(computer.weapon)
    end
  end
end

