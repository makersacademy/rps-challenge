require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  before :each do
    srand(0)
  end
  describe '#choice' do
    it 'generates a random rock, paper, scissors' do
      expect(computer.choice).to eq :Rock
    end
  end
end
