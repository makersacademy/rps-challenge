require 'player'

describe Player do
  let(:player) { described_class.new }

  it 'has a name' do
    expect(player.name).to eq "Player1"
  end

  it 'can pick an option' do
    expect(player.choose('rock')).to eq :rock
  end
end