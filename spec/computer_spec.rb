require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  describe '#chosen_weapon' do
    it 'randomly selects rock' do
      srand(0)
      expect(computer.chosen_weapon).to eq('rock')
    end

    it 'randomly selects paper' do
      srand(1)
      expect(computer.chosen_weapon).to eq('paper')
    end

    it 'randomly selects scissors' do
      srand(3)
      expect(computer.chosen_weapon).to eq('scissors')
    end
  end

end
