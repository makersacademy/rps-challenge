require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#weapon' do
    it 'selects a weapon' do
      expect(Game::WEAPONS).to receive(:sample)
      computer.weapon
    end
  end

end
