require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#rand_choice' do
    it 'takes a random choice of rock, paper, scissors' do
      srand(2)
      expect(computer.rand_choice).to eq 'Rock'
    end
  end
end
