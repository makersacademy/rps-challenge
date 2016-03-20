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
      allow(computer).to receive(:computer_play).and_return(:paper)
    end

    it 'Draw' do
      p computer.computer_play
      game.play('paper')
      p player_choice
      expect(game.winner).to eq 'It\'s a draw!'
    end
    it 'Player loses' do
      p computer.computer_play
      game.play('rock')
      expect(game.winner).to eq 'You win!'
    end
    it 'Player wins' do
      p computer.computer_play
      game.play('scissors')
      expect(game.winner).to eq 'You win!'
    end
  end
end
