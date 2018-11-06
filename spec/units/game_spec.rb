require 'game'

describe Game do 
  subject(:game) { described_class = Game.new('Mick') }
  let(:player1) { double :player, name: 'Charlie', selection: 'Rock' }
  let(:player2) { double :player, name: 'Bill', selection: 'Paper' }  

  describe '#initialize' do 
    it 'defaults player2 to Rocky McRock Face' do 
      expect(subject.p2).to eq 'Rocky McRock Face'
    end
  end

  describe '#round_winner' do 
  end

end
