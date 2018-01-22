require 'player'

describe Player do

  let(:player1) { described_class.new("Bob") }

  it 'Should return player name' do
    expect(player1.name).to eq 'Bob'
  end

  it 'Should save a players go' do
    player1.my_go(:rock)
    expect(player1.go).to eq :rock
  end

end
