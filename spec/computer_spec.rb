require 'computer'

describe Computer do

  subject(:computer){described_class.new}

describe '#name' do
  it 'gives player\'s name' do
    expect(computer.name).to eq 'Computer'
  end
end

describe '#random_decides' do
  it 'can set decision to rock' do
    allow(Kernel).to receive(:rand).and_return(0)
    computer.random_decides
    expect(computer.decision).to eq 'rock'
  end
  it 'can set decision to paper' do
    allow(Kernel).to receive(:rand).and_return(1)
    computer.random_decides
    expect(computer.decision).to eq 'paper'
  end
  it 'can set decision to scissors' do
    allow(Kernel).to receive(:rand).and_return(2)
    computer.random_decides
    expect(computer.decision).to eq 'scissors'
  end
end

end
