require './lib/player'

describe Player do
  subject(:spencer) { described_class.new('Spencer') }

  it "returns the players name" do
    expect(spencer.name).to eq('Spencer')
  end

  it "returns rock when a player chooses rock" do
    expect(spencer.rock).to eq('Rock')
  end

  it "returns paper when a player chooses paper" do
    expect(spencer.paper).to eq('Paper')
  end

  it "returns scissors when a player chooses scissors" do
    expect(spencer.scissors).to eq('Scissors')
  end

end
