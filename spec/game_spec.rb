require 'game'

describe Game do
  let(:player1){ double(:player, move: 'Rock') }
  let(:player2){ double(:player, move: 'Scissors') }
  subject(:game){ described_class.new(player1,player2)}


  describe '#make_moves' do
    it 'calls on the player and the computer to bring in the moves' do
      expect(player1).to receive(:make_move)
      expect(player2).to receive(:make_move)
      game.make_moves('Rock')
    end
  end

  describe '#outcome' do
    it 'compares the moves of the two players and declears the outcome' do
      expect(game.outcome).to eq(:win)
    end

    it 'compares the moves to be a draw' do
      allow(player2).to receive(:move){'Rock'}
      expect(game.outcome).to eq(:draw)
    end
  end




end
