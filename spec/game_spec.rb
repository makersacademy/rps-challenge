require 'player'

describe Player do

  describe '#initialize' do
    subject(:player) { described_class.new('rock')}
    
    it 'should return the players move' do
      expect(player.choice).to eq 'rock'
    end

  end

end
