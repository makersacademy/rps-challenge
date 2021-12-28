require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#option' do
    it 'returns a random option' do
      expect(Game::OPTIONS).to include computer.option
    end
  end

end
