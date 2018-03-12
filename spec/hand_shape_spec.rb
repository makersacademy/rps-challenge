require 'hand_shape'

describe HandShape do

  it 'initializes with and returns a name' do
    handshape = described_class.new('Rock')
    expect(handshape.name).to eq 'Rock'
  end

  it 'initializes with and returns a list of shapes it beats' do
    handshape = described_class.new('Rock', ['Scissors'])
    expect(handshape.beats).to eq ['Scissors']
  end

end
