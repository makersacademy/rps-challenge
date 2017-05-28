require './lib/player'

describe Player do
  subject(:spencer) { described_class.new('Spencer') }

  it "returns the players name" do
    expect(spencer.name).to eq('Spencer')
  end
end
