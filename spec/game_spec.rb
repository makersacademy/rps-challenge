require 'game'

describe Game do
  let(:rock) { double :rock }
  let(:paper) { double :paper }
  let(:scissors) { double :scissors }

  let(:salome) { double :player }
  let(:rules) { double :rules, rules: {:rock => :scissors,
      :paper => :rock,
      :scissors => :paper}}

  let(:losing_hand) {double :Opponent, hand: scissors}
  let(:tie_hand) {double :Opponent, hand: rock}
  let(:winning_hand) {double :Opponent, hand: paper}

  describe '#initialize' do
    subject(:game) {Game.new(salome, rock, losing_hand, rules)}
    it 'should initialize an opponent' do
      expect(game.player_two).to eq(losing_hand)
    end
    it 'should initalize a player 1'do
      expect(game.player_one).to eq(salome)
    end
    it 'should initialize a hand for player 1' do
      expect(game.hand).to eq(rock)
    end
  end

  context 'player 2 loses'
  subject(:game_lose) {Game.new(salome, rock, losing_hand, rules)}
  describe '#play' do
    it 'should be scissors' do
      expect(game_lose.play).to eq(scissors)
    end
    it 'should display winning message' do
      game_lose.play
      expect(game_lose.result).to eq ('You win!')
    end
  end

  context 'player 2 wins'
  subject(:game_win) {Game.new(salome, rock, winning_hand, rules)}
  describe '#play' do
    it 'should be paper' do
      expect(game_win.play).to eq(paper)
    end
    it 'should display losing message' do
      game_win.play
      expect(game_win.result).to eq ('You lose!')
    end
  end


  context 'tie'
  subject(:game_tie) {Game.new(salome, rock, tie_hand, rules)}
  describe '#play' do
    it 'should be rock' do
      expect(game_tie.play).to eq(rock)
    end
    it 'should display tie message' do
      game_tie.play
      expect(game_tie.result).to eq ("It's a tie!")
    end
  end
end
