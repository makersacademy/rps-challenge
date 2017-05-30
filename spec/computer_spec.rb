require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#name' do
    it 'returns the player name' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#choice' do
    it 'returns a random shape' do
      srand 1234
      expect(Game::SHAPES).to include computer.choice
    end
  end

end
