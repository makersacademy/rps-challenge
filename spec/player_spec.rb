require 'player'

describe Player do
  let(:game) { double :game }
  let(:player) { described_class.new 'matt' }
  it 'can initialize a player' do
    # player = described_class.new 'matt'
    expect(player.name).to eq 'matt'
  end

  it 'can set a player to a particular choice' do
    player.choice = 'rock'
    expect(player.choice).to eq 'rock'
  end
end
