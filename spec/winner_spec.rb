require 'winner'

describe Winner do

  it 'should determine name1 as the winner' do
    players = double(:players, move1: "rock", move2: "paper", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "James won!"
  end

  it 'should determine name2 as the winner' do
    players = double(:players, move1: "rock", move2: "scissors", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "Caitlin won!"
  end

  it 'should determine a draw' do
    players = double(:players, move1: "rock", move2: "rock", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "It's a draw!"
  end

  it 'should determine name1 as the winner' do
    players = double(:players, move1: "paper", move2: "scissors", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "James won!"
  end

  it 'should determine name2 as the winner' do
    players = double(:players, move1: "paper", move2: "rock", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "Caitlin won!"
  end

  it 'should determine a draw' do
    players = double(:players, move1: "paper", move2: "paper", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "It's a draw!"
  end

  it 'should determine name1 as the winner' do
    players = double(:players, move1: "scissors", move2: "rock", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "James won!"
  end

  it 'should determine name2 as the winner' do
    players = double(:players, move1: "scissors", move2: "paper", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "Caitlin won!"
  end

  it 'should determine a draw' do
    players = double(:players, move1: "scissors", move2: "scissors", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "It's a draw!"
  end
end
