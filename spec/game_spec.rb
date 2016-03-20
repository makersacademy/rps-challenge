require 'game'

describe Game do
  subject(:game){described_class.new(player, computer)}
  let(:computer) {double :computer}
  let(:player) {double(:player, name: 'Claudia')}

  describe '#initialize' do
    it 'assigns a player' do
      expect(game.player).to eq player
    end
  end

  describe '#play' do
    before do
      allow(computer).to receive(:computer_play).and_return('paper')
    end

    it 'is a draw' do
      expect(game.play('paper')).to eq 'It\'s a draw!'
    end
    it 'player loses' do
      expect(game.play('rock')).to eq 'You lose the game!'
    end
    it 'player wins' do
      expect(game.play('scissors')).to eq 'You won the game!'
    end
  end
end
