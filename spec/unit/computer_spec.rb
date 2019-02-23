require './models/computer.rb'

describe Computer do
  it 'should return rock if random number generator returns 0' do
    allow(Computer).to receive(:rand).and_return(0)

    expect(Computer.move).to eq('rock')
  end

  it 'should return paper if random number generator returns 1' do
    allow(Computer).to receive(:rand).and_return(1)

    expect(Computer.move).to eq('paper')
  end

  it 'should return scissors if random number generator returns 2' do
    allow(Computer).to receive(:rand).and_return(2)

    expect(Computer.move).to eq('scissors')
  end
end
