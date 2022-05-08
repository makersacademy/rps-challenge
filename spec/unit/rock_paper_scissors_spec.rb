require './lib/rock_paper_scissors'

describe RockPaperScissors do

  it 'paper beats rock' do
    rps = RockPaperScissors.new(guess: 'rock')
    rps.rand_seed = 1
    expect(rps.winner_is).to eq('Robot wins')
  end

  it 'paper loses to scissors' do
    rps = RockPaperScissors.new(guess: 'scissors')
    rps.rand_seed = 1
    expect(rps.winner_is).to eq('You win')
  end

  it 'paper ties with paper' do
    rps = RockPaperScissors.new(guess: 'paper')
    rps.rand_seed = 1
    expect(rps.winner_is).to eq('Tie')
  end
end
