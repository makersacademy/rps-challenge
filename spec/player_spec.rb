require 'player'

describe Player do

  let(:subject) { Player.new("Lily") }
  let(:round) { double(:round) }

  it 'should initialize a player with a name' do
    expect(subject.name).to eq 'Lily'
  end

  it 'should store moves in an array' do
    subject.store_move('rock')
    expect(subject.moves).to eq ['rock']
  end

  it 'should store games by win/loss category' do
    subject.add_outcome("won", round)
    expect(subject.outcomes["won"]).to include round
  end

  it 'should count number of wins' do
    subject.add_outcome("won", round)
    expect(subject.count_outcome("won")).to eq 1
  end

  it 'hould count the number of each move type' do
    2.times { subject.store_move("rock") }
    expect(subject.count_move_type("rock")).to eq 2
  end
end
