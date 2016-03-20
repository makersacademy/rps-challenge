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

    it 'Draw' do
      game.play('paper')
      expect(game.winner).to eq 'It\'s a draw!'
    end
    it 'Player loses' do
      game.play('rock')
      expect(game.winner).to eq 'You lose!'
    end
    it 'Player wins' do
      game.play('scissors')
      expect(game.winner).to eq 'You win!'
    end
  end
end
