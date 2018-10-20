require 'winner'

describe Winner do

  it 'should determine that rock beats scissors' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :rock, move2: :scissors)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end

  it 'should determine that paper beats rock' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :paper, move2: :rock)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end

  it 'should determine that scissors beats paper' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :scissors, move2: :paper)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end

  it 'should determine that scissors beats lizard' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :scissors, move2: :lizard)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end

  it 'should determine that rock beats lizard' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :rock, move2: :lizard)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end

  it 'should determine that lizard beats paper' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :lizard, move2: :paper)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end

  it 'should determine that paper beats spock' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :paper, move2: :spock)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end
  it 'should determine that lizard beats spock' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :lizard, move2: :spock)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end

  it 'should determine that spock beats rock' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :spock, move2: :rock)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end

  it 'should determine that spock beats scissors' do
    players = double(:players, name1: "Caitlin", name2: "James", move1: :spock, move2: :scissors)
    winner = Winner.new(players)
    expect(winner.determine).to eq winner.player1_won
  end
end
