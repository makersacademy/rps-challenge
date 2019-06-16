require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#choice' do
    it 'returns a random choice' do
      expect(Computer::CHOICES).to include computer.choice
    end
  end
end