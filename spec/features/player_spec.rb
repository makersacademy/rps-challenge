require 'player'

describe Player do
  subject(:marie) { Player.new('Marie') }

  describe '#name' do
    it 'returns the name' do
      expect(marie.name).to eq 'Marie'
    end
  end

  describe '#choose' do
    it 'choose one option' do
      marie.choose('Scissors')
      expect(marie.choice).to eq 'Scissors'
    end
  end

  describe '#chosen_option' do
    it 'display the chosen option' do
      marie.choose('Scissors')
      expect(marie.chosen_option).to eq 'Scissors'
    end
  end


  
end
