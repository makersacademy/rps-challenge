require 'winner'

describe Winner do

  it 'displays a winner' do
    # @winner = Game.new(@user_choice, @random_choice).outcome
    winner = Winner.new("Rock", "Scissors")
    expect(winner.outcome).to eq "Human"
  end

  it 'displays a winner' do
    winner = Winner.new("Rock", "Paper")
    expect(winner.outcome).to eq "Computer"
  end

  it 'displays a winner' do
    winner = Winner.new("Rock", "Rock")
    expect(winner.outcome).to eq "Draw"
  end

  it 'displays a winner' do
    winner = Winner.new("Scissors", "Rock")
    expect(winner.outcome).to eq "Computer"
  end

  it 'displays a winner' do
    winner = Winner.new("Scissors", "Paper")
    expect(winner.outcome).to eq "Human"
  end

  it 'displays a winner' do
    winner = Winner.new("Scissors", "Scissors")
    expect(winner.outcome).to eq "Draw"
  end

  it 'displays a winner' do
    winner = Winner.new("Paper", "Rock")
    expect(winner.outcome).to eq "Human"
  end

  it 'displays a winner' do
    winner = Winner.new("Paper", "Paper")
    expect(winner.outcome).to eq "Draw"
  end

  it 'displays a winner' do
    winner = Winner.new("Paper", "Scissors")
    expect(winner.outcome).to eq "Computer"
  end

end
