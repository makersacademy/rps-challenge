require 'game'
require 'player'

describe Game do
  let(:alpha) { double :player }
  subject(:game) { Game.new(alpha) }

  describe '#player1' do
    it 'retrieves player 1' do
      expect(game.player1).to eq alpha
    end
  end

  describe '#computer_guess' do
    it 'chooses a random option Rock' do
      srand 1
      expect(game.computer_guess).to eq :rock
    end

    it 'chooses a random sample Scissors' do
      srand 2
      expect(game.computer_guess).to eq :scissors
    end

    it 'chooses a random sample Paper' do
      srand 3
      expect(game.computer_guess).to eq :paper
    end
  end

  describe '#winner_is' do
    it 'ties if both players choose the same' do
      allow(alpha).to receive(:tool).and_return('rock')
      allow(game).to receive(:computer_guess).and_return(:rock)
      expect(game.winner_is).to eq 'Tie! Try again'
    end

    it 'player1 wins if chooses the stronger match' do
      allow(alpha).to receive(:tool).and_return('rock')
      allow(game).to receive(:computer_guess).and_return(:scissors)
      expect(game.winner_is).to eq 'Player wins'
    end

    it 'player1 loses if chooses the weaker match' do
      allow(alpha).to receive(:tool).and_return('paper')
      allow(game).to receive(:computer_guess).and_return(:scissors)
      expect(game.winner_is).to eq 'Computer wins'
    end

  end

end
