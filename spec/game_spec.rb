require './lib/game'

describe Game do
  it 'returns true or false for a geme of rps' do
    random = double(generate: 'paper')
    game = Game.new('rock', random)
    expect(game.won?).to eq false
  end
end
