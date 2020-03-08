require 'player'

describe Player do

  subject(:player) { described_class.new("Human") }

  it "has a name" do
    expect(player.name).to eq "Human"
  end

  it { is_expected.to respond_to(:weapon) }
end
