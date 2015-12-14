require 'game'

describe Game do

  let(:player1) { double(:player1, name: 'John', selection: 'Paper', score_up: 'Points increased') }
  let(:player2) { double(:player2, name: 'Computer', selection: 'Rock', score_up: 'Points increased') }
  let(:turn) { double(:turn, play: 666, winner: :player1, message: 'You won!') }
  let(:turn_klass) { double(:turn_klass, new: turn)}
  subject(:game) { described_class.new(player1, player2, turn_klass) }

  before do
    allow(player1).to receive(:selection=)
    allow(player2).to receive(:selection=)
  end

  describe '#turn_message' do
    it 'returns the message after each turn' do
      game.play_turn('Paper')
      expect(game.turn_message).to eq 'You won!'
    end
  end

  describe '#player1' do
    it 'returns the player1 name' do
      expect(game.player1.name).to eq 'John'
    end
  end

  describe '#play_turn' do
    it 'plays the turn increasing the winner\'s score' do
      expect(turn).to receive(:winner)
      game.play_turn('Paper')
    end

    it 'increases the score of the winning player' do
      expect(player1).to receive(:score_up)
      game.play_turn('Paper')
    end
  end

  describe '#win_message' do
    it 'returns a win message if player1 is winner' do
      allow(player1).to receive(:winner?) { true }
      allow(player2).to receive(:winner?) { false }
      expect(game.win_message).to eq "Congratulations! You won against Computer"
    end

    it 'returns a lose message if player2 is winner' do
      allow(player1).to receive(:winner?) { false }
      allow(player2).to receive(:winner?) { true }
      expect(game.win_message).to eq "Oh no! You lost against Computer"
    end
  end

end
