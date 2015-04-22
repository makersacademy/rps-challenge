require 'player'

describe Player do
  let(:player) { described_class.new }

  it 'has a name' do
    expect(player.name).to eq "Player1"
  end

  it 'can pick rock option' do
    expect(player.choose('rock')).to eq :rock
  end

  it 'can pick paper option' do
    expect(player.choose('paper')).to eq :paper
  end

  it 'can pick scissors option' do
    expect(player.choose('scissors')).to eq :scissors
  end
end