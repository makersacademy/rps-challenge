require 'player'

describe Player do
  let(:player) { described_class.new("John") }
  it 'name should equal John' do
    expect(player.name).to eq("John")
  end

  it 'can set a decision' do
    player.decision = "rock"
    expect(player.decision).to eq "rock"
  end

  it 'has a score' do
    expect(player.score).to eq 0
  end

  describe '#score_point' do
    it 'adds 1 to score' do
      player.score_point
      expect(player.score).to eq 1
    end
  end
end
