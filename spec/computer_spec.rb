require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#rand_choice' do
    it 'takes a random choice of rock, paper, scissors' do
      srand(2)
      expect(computer.rand_choice).to eq 'Rock'
    end
  end

  describe '#choose_winner' do
    it 'chooses a winner depending on choices made' do
      srand(2)
      computer.rand_choice
      expect(computer.choose_winner('Paper')).to eq 'player'
    end
  end

  describe '#winner' do
    it 'provides a winner depending on the outcome' do
      srand(2)
      computer.rand_choice
      computer.choose_winner('Scissors')
      expect(computer.winner).to eq 'computer'
    end
  end
end
