require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#choose_weapon' do
    it 'should choose randomly from the Game::WEAPONS array' do
      expect(Game::WEAPONS).to receive(:sample)
      computer.choose_weapon
    end
  end
end
