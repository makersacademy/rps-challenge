require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#choice' do
    it 'takes a random choice of rock, paper, scissors' do
      srand(2)
      expect(computer.choice).to eq 'Rock'
    end
  end
end
