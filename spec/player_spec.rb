require 'player'

describe Player do
  let(:player) { described_class.new }

  it 'has a name' do
    expect(player.name).to eq "Player1"
  end
end