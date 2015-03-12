require 'player'

describe Player do

  let(:player) { Player.new("Kevin") }

  it 'should have a name' do
    expect(player.name).to eq "Kevin"
  end

  it 'should start game having made no choice yet' do
    expect(player.choice).to eq(nil)
  end

  it 'should make a choice' do
    player.choice = "Rock"
    expect(player.choice).to eq("Rock")
  end

  it 'should start with no score' do
    expect(player.score).to eq(0)
  end

  it 'should have a score' do
    player.score += 1
    expect(player.score).to eq(1)
  end
end