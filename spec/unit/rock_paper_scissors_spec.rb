require './lib/rock_paper_scissors'

describe RockPaperScissors do

  it 'paper beats rock' do
    rps = RockPaperScissors.new(guess: 'rock')
    srand(1)
    expect(rps.winner_is).to eq('Robot wins')
  end

  it 'paper loses to scissors' do
    rps = RockPaperScissors.new(guess: 'scissors')
    srand(1)
    expect(rps.winner_is).to eq('You win')
  end

  it 'paper ties with paper' do
    rps = RockPaperScissors.new(guess: 'paper')
    srand(1)
    expect(rps.winner_is).to eq('Tie')
  end

  it 'paper beats spock' do
    rps = RockPaperScissors.new(guess: 'spock')
    srand(1)
    expect(rps.winner_is).to eq('Robot wins')
  end

  it 'paper loses to lizard' do
    rps = RockPaperScissors.new(guess: 'lizard')
    srand(1)
    expect(rps.winner_is).to eq('You win')
  end
end
