require 'game'

describe Game do

  describe '#move' do
    subject(:player) { described_class.new('rock')}
    
    it 'should return the players move' do
      expect(player.move).to eq 'rock'
    end

  end

end
