require 'hand_shape'

describe HandShape do

  it 'initializes with and returns a name' do
    handshape = described_class.new('Rock')
    expect(handshape.name).to eq 'Rock'
  end

  it 'initializes with and returns a list of weaknesses' do
    handshape = described_class.new('Rock', ['Paper'])
    expect(handshape.weaknesses).to eq ['Paper']
  end

end
