require 'player'

describe Player do
  let(:player) { described_class.new("Dove") }

  it "knows its name" do
    expect(player.name).to eq("Dove")
  end
end
