require 'player'

describe Player do
  let(:player) { described_class.new("Henry") }

  it "can store player name" do
    expect(player.name).to eq "Henry"
  end
end
