require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2, weapons) }
  let(:player1) { double :player1, name: 'Ed', choice: :paper, add_score: nil }
  let(:player2) { double :player2, name: 'Computer', choice: :paper}
  let(:weapons) { double :weapons, compare: nil, result: :paper }
  let(:paper) { double :paper }

  describe 'defaults' do
    it 'should initialize with two players' do
      expect(game.player1).to eq player1
      expect(game.player2).to eq player2
    end

    it 'should initialize with a nil winner' do
      expect(game.winner).to be nil
    end

    it 'should initialize with current player 1' do
      expect(game.current).to be player1
    end
  end

  describe '#outcome' do
    it 'should call weapons.compare' do
      expect(weapons).to receive(:compare)
      game.outcome
    end
  end

  describe '#switch' do
    it 'should switch players' do
      game.switch
      expect(game.current).to be player2
    end
  end

  describe '#round' do
    it 'should monitor how many rounds have been played' do
      game.outcome
      game.outcome
      expect(game.round).to eq 3
    end
  end

  describe '#score' do
    it 'should monitor the player scores' do
      expect(player1).to receive(:add_score)
      game.outcome
    end
  end

  describe '#game_over?' do
    it 'should know when a game is over' do
      allow(player1).to receive(:score).and_return(3)
      expect(game.game_over?).to eq true
    end
  end

end
