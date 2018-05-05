require 'player'

describe Player do
  let(:player) {described_class.new("John")}
  it 'name should equal John' do
    expect(player.name).to eq("John")
  end

  it 'can set a decision'  do
    player.decision = "rock"
    expect(player.decision).to eq "rock"
  end


end
