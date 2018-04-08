require 'computer'

describe Computer do
  subject{ described_class.new }

  it 'Should return the  default name' do
    expect(subject.name).to eq 'COMPUTER'
  end

  it 'Should return the rock, paper, scissors by randen' do
    allow(Kernel).to receive(:rand).with(0..2).and_return(0)
    expect(subject.choose).to eq :rock
  end

end
