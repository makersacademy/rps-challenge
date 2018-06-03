describe Game do

  let(:player1) { double :player }
  let(:player2) { double :player }
  subject(:game) { described_class.new(player1, player2) }

  describe '#player_1' do
    it 'gets the first player' do
      expect(subject.player1).to eq player1
    end
  end

  describe '#player_2' do
    it 'gets the second player' do
      expect(subject.player2).to eq player2
    end
  end
  
end
