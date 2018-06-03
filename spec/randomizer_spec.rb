describe Randomizer do
  it 'can return rock' do
    randomizer = Randomizer.new
    allow(Kernel).to receive(:rand).and_return 1
    result = randomizer.result
    expect(result).to eq "Rock"
  end

  it 'can return paper' do
    randomizer = Randomizer.new
    allow(Kernel).to receive(:rand).and_return 2
    result = randomizer.result
    expect(result).to eq "Paper"
  end

  it 'can return scissors' do
    randomizer = Randomizer.new
    allow(Kernel).to receive(:rand).and_return 3
    result = randomizer.result
    expect(result).to eq "Scissors"
  end
end
