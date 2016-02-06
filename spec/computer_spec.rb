require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#random_weapon' do
    it 'selects a weapon' do
      allow(Game::WEAPONS).to receive(:sample).and_return('Rock')
      expect(computer.weapon).to eq 'Rock'
    end
  end

end
