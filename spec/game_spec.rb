require 'game'

describe Game do

  it 'should return a draw' do
    expect(Game.resolve("Paper", "Paper")).to eq(:draw)
  end

  it 'should return a win' do
    expect(Game.resolve("Rock", "Scissors")).to eq(:win)
  end

  it 'should return a loss' do
    expect(Game.resolve("Scissors", "Rock")).to eq(:lose)
  end

end
