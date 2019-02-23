require './models/computer.rb'

describe Computer do
  let(:computer) { Computer.new }

  it 'should return rock if random number generator returns 0' do
    allow(computer).to receive(:rand).and_return(0)

    expect(computer.move).to eq('rock')
  end

  it 'should return paper if random number generator returns 1' do
    allow(computer).to receive(:rand).and_return(1)

    expect(computer.move).to eq('paper')
  end

  it 'should return scissors if random number generator returns 2' do
    allow(computer).to receive(:rand).and_return(2)

    expect(computer.move).to eq('scissors')
  end
end
