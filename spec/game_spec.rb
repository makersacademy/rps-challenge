require 'game'
require 'player'

describe Game do
  it 'returns random value for computer choice' do
    player = double
    game = Game.new(player)
    expect(['rock', 'paper', 'scissors']).to include(game.computer_choice?)
  end

  it 'checks win method if you pick rock over scissors' do
    player = double
    game = Game.new(player)
    expect(game.win?('rock', 'scissors')).to eq true
  end

  it 'checks win method if you pick scissors over paper' do
    player = double
    game = Game.new(player)
    expect(game.win?('scissors', 'paper')).to eq true
  end

  it 'checks win method if you pick paper over rock' do
    player = double
    game = Game.new(player)
    expect(game.win?('paper', 'rock')).to eq true
  end

  it 'checks draw method if you pick paper and paper' do
    player = double
    game = Game.new(player)
    expect(game.win?('paper', 'paper')).to eq 'draw'
  end

  it 'checks loss method if you pick paper and scissors' do
    player = double
    game = Game.new(player)
    expect(game.win?('paper', 'scissors')).to eq false
  end

  it 'checks loss method if you pick paper and rock' do
    player = double
    game = Game.new(player)
    expect(game.win?('paper', 'rock')).to eq true
  end
end
