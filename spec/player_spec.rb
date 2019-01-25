require 'player'

describe Player do

  let(:subject) { Player.new("Lily") }

  it 'should initialize a player with a name' do
    expect(subject.name).to eq 'Lily'
  end

  it 'should store moves in an array' do
    subject.store_move('rock')
    expect(subject.moves).to eq ['rock']
  end
end
