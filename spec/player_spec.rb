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
    expect(subject.outcomes).to eq ( { "won" => [round], "lost" => [], "draw" => [] } )
  end

  it 'should count number of wins' do
    subject.add_outcome("won", round)
    expect(subject.count_outcome("won")).to eq 1
  end

end
