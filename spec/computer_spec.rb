require 'computer'

describe Computer do
  before(:each) do
    @list = [:rock, :paper, :scissors, :lizard, :spock]
    @computer = Computer.new(@list)
  end

  it 'returns name ' do
    expect(@computer.name).to eq("Computer")
  end

  it 'computer opponent returns :rock, :paper, :scissors, :spock, or :lizard' do
    @computer.choose
    expect(@list).to include (@computer.choice)
  end

  it 'returns :rock with a seeded random of 34' do
    srand(34)
    @computer.choose
    expect(@computer.choice).to eq(:rock)
  end

  it 'returns :lizard with a seeded random of 3' do
    srand(3)
    @computer.choose
    expect(@computer.choice).to eq(:lizard)
  end

  it 'returns :spock with seed random of 678' do
    srand(678)
    @computer.choose
    expect(@computer.choice).to eq(:spock)
  end

  it 'returns :paper with seed random of 45' do
    srand(45)
    @computer.choose
    expect(@computer.choice).to eq(:paper)
  end

  it 'returns :scissors with seed random of 99' do
    srand(99)
    @computer.choose
    expect(@computer.choice).to eq(:scissors)
  end


end
