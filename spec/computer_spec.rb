require 'computer'
describe Computer do
  subject(:computer) { described_class.new }

  describe '#randomise_weapon' do
    it 'computer selects a random weapon' do
      srand(1)
      expect(computer.randomise_weapon).to eq "rock"
    end
  end
end
