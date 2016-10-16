require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  describe '#weapon' do
    it 'chooses a random weapon from an array' do
      expect(Game::WEAPONS).to include :paper
    end
  end
end
