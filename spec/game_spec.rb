require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1, name: 'Rebecca', move: 'Rock' }
  let(:player_2) { double :player_2, move: 'Paper' }
  let(:player_3) { double :player_3, move: 'Scissors' }

  describe '#player_1' do
    it 'retrives the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrives the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  context '#result' do
    it 'Rock beats Scissors' do
      expect(game.result(player_1.move, player_3.move)).to eq "Rebecca loses"
    end
    it 'Paper beats Rock' do
      expect(game.result(player_1.move, player_1.move)).to eq "It's a Draw"
    end
    it 'Scissors beats Paper' do
      expect(game.result(player_1.move,
         player_2.move)).to eq "Rebecca wins"
    end
  end
end
