require 'game'

describe Game do
  let(:player) { double :player }
  subject(:game) { described_class.new(player) }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe '#computer_move' do
    it 'returns scissors, paper or rock' do
      srand(4)
      expect(game.computer_move).to eq "Rock"
    end
  end

  describe '#outcome' do
    it 'should return a win, draw or loss' do
      srand(4)
      game.computer_move
      allow(player).to receive(:show_choice).and_return "Paper"
      expect(game.outcome(game.player.show_choice)).to eq "You win!"
    end
  end
end
