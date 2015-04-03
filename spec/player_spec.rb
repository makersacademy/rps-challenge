require 'player'

describe Player do
  let(:player) { described_class.new([:rock, :paper, :scissors]) }

  it 'initializes with array of available options' do
    expect { described_class.new([:rock]) }.not_to raise_error
  end

  it 'makes a choice of RPS' do
    expect(player.choose :rock).to eq :rock
  end

  it 'remembers its choice' do
    player.choose :paper
    expect(player.choice).to eq :paper
  end

  it 'raises error on incorrect input' do
    expect do
      player.choose :item
    end.to raise_error 'Invalid Choice: only rock, paper or scissors available'
  end
end
