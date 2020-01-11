require 'rpsgame'

describe RpsGame do
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  subject { RpsGame.new(player1, player2) }

  describe '#players' do
    it 'return player 1' do
      expect(subject.player1).to eq player1
    end

    it 'return player 2' do
      expect(subject.player2).to eq player2
    end
  end

end
