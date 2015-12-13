require 'game'

describe Game do

  let(:player1) { double(:player1, name: 'John', selection: 'Paper') }
  let(:player2) { double(:player2, name: 'Computer', selection: 'Rock') }
  let(:turn) { double(:turn, play: 'You won!') }
  let(:turn_klass) { double(:turn_klass, new: turn)}
  subject(:game) { described_class.new(player1, player2, turn_klass) }

  before do
    allow(player1).to receive(:selection=)
    allow(player2).to receive(:selection=)
  end

  describe '#message' do
    it 'returns the welcome message at start' do
      expect(game.message).to eq 'Welcome!'
    end
  end

  describe '#player1' do
    it 'returns the player1 name' do
      expect(game.player1.name).to eq 'John'
    end
  end

  describe '#selection' do
    it 'saves player1 selection' do
      expect(player1).to receive(:selection=)
      game.play_turn('Paper')
    end

    it 'saves automatically a rand_weapon if computer is opponent' do
      expect(player2).to receive(:selection=)
      game.play_turn('Paper')
    end
  end

  describe '#play_turn' do
    it 'returns a message for closing the turn' do
      expect(turn).to receive(:play)
      game.play_turn('Paper')
    end
  end

end
