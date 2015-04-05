require 'player'

describe Player do
  let(:game) { double :game }
  let(:player) { described_class.new 'matt' }
  it 'can initialize a player' do
    # player = described_class.new 'matt'
    expect(player.name).to eq 'matt'
  end

  it 'can play rock' do
    expect(player.rock).to eq "rock"
  end

  it 'can play scissors' do
    expect(player.scissors).to eq "scissors"
  end

  it 'can play paper' do
    expect(player.paper).to eq "paper"
  end
end
