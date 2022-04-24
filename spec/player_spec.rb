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
      marie.choose('scissors')
      expect(marie.choice).to eq 'scissors'
    end
  end

  describe '#chosen_option' do
    it 'display the chosen option' do
      marie.choose('scissors')
      expect(marie.chosen_option).to eq 'scissors'
    end
  end

end
