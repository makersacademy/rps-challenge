require 'game'

describe Game do
  it 'has a player pick' do
    game = Game.new(:rock, :scissors)
    expect(game.player_pick).to eq(:rock)
  end
  it 'has a opponent pick' do
    game = Game.new(:rock, :scissors)
    expect(game.opponent_pick).to eq(:scissors)
  end
  it 'returns the correct result given rock and scissors' do
    game = Game.new(:rock, :scissors)
    expect(game.result).to eq(:win)
  end
  it 'returns a draw given two rocks' do
    game = Game.new(:rock, :rock)
    expect(game.result).to eq(:draw)
  end
  it 'returns the correct result given scissors and rock' do
    game = Game.new(:scissors, :rock)
    expect(game.result).to eq(:lose)
  end
end
