require "player"
describe Player do
  let(:player) { described_class.new("Jenny") }
  let(:comp) { described_class.new }
  let(:kernel) { double :kernel }
  it "returns the player name" do
    expect(player.name).to eq "Jenny"
  end

  it 'computer returns rock if random number is 0' do
    allow(kernel).to receive(:rand).with(3).and_return(0)
    comp.comp_choose(kernel)
    expect(comp.choice).to eq "Rock"
  end

  it 'computer returns paper if random number is 1' do
    allow(kernel).to receive(:rand).with(3).and_return(1)
    comp.comp_choose(kernel)
    expect(comp.choice).to eq "Paper"
  end

  it 'computer returns scissors if random number is 2' do
    allow(kernel).to receive(:rand).with(3).and_return(2)
    comp.comp_choose(kernel)
    expect(comp.choice).to eq "Scissors"
  end
end
