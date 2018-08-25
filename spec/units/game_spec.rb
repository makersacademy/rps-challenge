require 'game'

describe Game do 
subject(:game) { described_class = Game.new('Mick') }

  describe '#initialize' do 
    it 'defaults player2 to Rocky McRock Face' do 
      expect(subject.player2).to eq 'Rocky McRock Face'
    end
  end


end
