require 'player'

describe Player do
  subject(:player) { described_class.new("Alex") }
  it { expect(Player).to respond_to(:new).with(1).argument }

  it 'creates a player called Alex' do
    expect(player.name).to eq "Alex"
  end
end
