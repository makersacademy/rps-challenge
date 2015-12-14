require 'RPS'

describe RPS do
  subject(:game) { described_class.new('Player 1') }

  it 'The game has 1 player mode' do
    expect(game.player).to eq 'Player 1'
  end

  before do
    allow(Kernel).to receive(:rand).and_return(3)
  end

  it 'user loses to scissors when choosing paper' do
    game.compute
    game.paper
    expect(game.win).to eq false
  end

  it 'user wins to scissors when choosing rock' do
    game.compute
    game.rock
    expect(game.win).to eq true
  end

  it 'user draws to scissors when choosing scissors' do
    game.compute
    game.scissors
    expect(game.draw).to eq true
  end

  it 'adds a point to your score if you win' do
    game.compute
    game.rock
    expect(game.score).to eq 1
  end

  it 'adds a point to the computers score if you lose' do
    game.compute
    game.paper
    expect(game.comp_score).to eq 1
  end

  it 'resets game values after a round' do
    game.compute
    game.scissors
    game.reset
    expect(game.draw).to eq false
  end
end
