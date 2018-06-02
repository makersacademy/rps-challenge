describe Randomizer do
  it 'can return rock' do
    # Setup
    randomizer = Randomizer.new
    allow(Kernel).to receive(:rand).and_return 1
    # Exercise
    result = randomizer.result
    # Verify
    expect(result).to eq "Rock"
  end

  it 'can return paper' do
    # Setup
    randomizer = Randomizer.new
    allow(Kernel).to receive(:rand).and_return 2
    # Exercise
    result = randomizer.result
    # Verify
    expect(result).to eq "Paper"
  end

  it 'can return scissors' do
    # Setup
    randomizer = Randomizer.new
    allow(Kernel).to receive(:rand).and_return 3
    # Exercise
    result = randomizer.result
    # Verify
    expect(result).to eq "Scissors"
  end

end
