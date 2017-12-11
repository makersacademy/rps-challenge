require 'computer'

describe Computer do

  subject(:game) {described_class.new}

  describe '#chosen_weapon' do
    it 'randomly selects rock' do
      srand(0)
      expect(game.weapon).to eq('rock')
    end

    it 'randomly selects paper' do
      srand(1)
      expect(game.weapon).to eq('paper')
    end

    it 'randomly selects scissors' do
      srand(3)
      expect(game.weapon).to eq('scissors')
    end
  end

end
