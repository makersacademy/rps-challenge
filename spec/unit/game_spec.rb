require 'game'

describe Game do

  let(:matt) { 'rock' }
  let(:ai) { 'scissors' }
  subject(:game) { Game.new(matt, ai) }

  it 'knows the users input' do
    expect(game.p1).to eq 'rock'
  end

  it 'allows rock to win' do
    expect(game.result).to eq 'rock'
  end

  it 'allows scissors to win' do
    scissors = Game.new('scissors', 'paper')
    expect(scissors.result).to eq 'scissors'
  end

  it 'allows paper to win' do
    paper = Game.new('paper', 'rock')
    expect(paper.result).to eq 'paper'
  end

  it 'allows spock to win' do
    spock = Game.new('spock', 'rock')
    expect(spock.result).to eq 'spock'
  end

  it 'allows lizard to win' do
    lizard = Game.new('lizard', 'spock')
    expect(lizard.result).to eq 'lizard'
  end

  describe '#a drawing game' do

    it 'allows the user to draw' do
      draw_game = Game.new('paper', 'paper')
      expect(draw_game.result).to eq 'draw'
    end
  end

  describe '#a losing game' do
    it 'allows the user to lose' do
      lose_game = Game.new('rock', 'paper')
      expect(lose_game.result).to eq 'lose'
    end
  end
end
