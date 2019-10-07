require 'game'

describe Game do

  let(:game) { Game.new('Clare', 'Rock') }

  it 'chooses who wins' do
    p srand(0) # Rock
    expect(game.msg).to eq 'Clare played ROCK, computer played ROCK. Clare and computer DRAW!'
  end

  it 'chooses who wins' do
    p srand(1) # Paper
    expect(game.msg).to eq 'Clare played ROCK, computer played PAPER. COMPUTER WINS!'
  end

  it 'chooses who wins' do
    p srand(3) # Scissors
    expect(game.msg).to eq 'Clare played ROCK, computer played SCISSORS. CLARE WINS!'
  end

end
