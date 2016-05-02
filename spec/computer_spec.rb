require 'computer'
require 'game'

describe Computer do
  subject(:computer)  { Computer.new }


  describe '#choice' do
    it 'has a random RPS choice' do
      allow(computer).to receive(:choose_at_random)
      expect(Game::MOVES).to include{computer.choose_at_random}
    end
  end



end
