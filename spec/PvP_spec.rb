require 'pvp'

describe PvP do
  subject(:game) { described_class.new('Player 1', 'Player 2')}

  it 'records player 1\'s name' do
    expect(game.player_1).to eq 'Player 1'
  end

  it 'records player 2\'s name' do
    expect(game.player_2).to eq 'Player 2'
  end

  it 'Player 1 can lose to Player 2' do
    game.evaluate(1, 2)
    expect(game.p1_win).to eq false
  end

  it 'Players start with 0 score count' do
    expect(game.p1_score).to eq 0
    expect(game.p2_score).to eq 0
  end

  it 'Player 2 can lose to Player 1' do
    game.evaluate(3, 2)
    expect(game.p1_win).to eq true
  end

  it 'Players can draw' do
    game.evaluate(2, 2)
    expect(game.draw).to eq true
  end

  it 'can reset draw attribute to false after round' do
    game.evaluate(1, 1)
    game.reset
    expect(game.draw).to eq false
  end

  it 'Adds 1 point to player 1\'s score upon winning' do
    game.evaluate(3, 2)
    expect(game.p1_score).to eq 1
  end

  it 'Adds 1 point to player 2\'s score upon winning' do
    game.evaluate(1, 2)
    expect(game.p2_score).to eq 1
  end
end
