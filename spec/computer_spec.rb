require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#make_selection' do
    it 'can make a random selection of weapon' do
      srand(2)
      expect(computer.make_selection).to eq "Rock"
    end
    it 'can make a random selection of weapon' do
      srand(2)
      expect(computer.make_selection).to eq "Rock"
    end
    it 'can make a random selection of weapon' do
      srand(3)
      expect(computer.make_selection).to eq "Scissors"
    end
  end
end
