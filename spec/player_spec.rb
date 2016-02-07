
require 'player'

describe Player do

  subject(:scott) { Player.new('Scott') }
  subject(:kai) { Player.new('Kai') }

  describe '#name' do
    it 'returns the name' do
      expect(scott.name).to eq 'Scott'
    end
  end

  describe '#move' do
    it 'assigns move' do
      expect(scott.move='rock').to eq 'rock'
    end

    it 'assigns move' do
      expect(scott.move='paper').to eq 'paper'
    end
  end
end
