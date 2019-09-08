require 'game'

describe Game do 
  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player_1 }
  
  before (:each) do 
    srand(67809)
  end

  context '#initialize' do
    it 'accepts a player object' do
      expect(subject.player_1).to eq(player_1)
    end
  end

  context '#computer_choice' do
    it 'provides a computer choice' do
      expect(subject.computer).to eq(:scissors)
    end
  end 

  context 'returning correct result' do 
    it 'returns correct result for rock vs paper' do
      expect(game.result(:rock, :paper)).to eq(:loss)
    end 

    it 'returns correct result for rock vs rock' do
      expect(game.result(:rock, :rock)).to eq(:draw)
    end 

    it 'returns correct result for rock vs scissors' do
      expect(game.result(:rock, :scissors)).to eq(:win)
    end 
  end 
end
