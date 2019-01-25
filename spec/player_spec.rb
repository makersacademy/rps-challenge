require 'player'

describe Player do

  let(:subject) { Player.new("Lily") }

  it 'should initialize a player with a name' do
    expect(subject.name).to eq 'Lily'
  end
end
