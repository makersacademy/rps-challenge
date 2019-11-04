require 'player'

describe Player do
  let(:jez) { described_class.new("Jez") }

  it "returns a player name" do
    expect(jez.name).to eq "Jez"
  end
end
