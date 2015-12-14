require 'element'

describe Element do
  let(:element) { described_class.new 'rock' }
  it 'has been assigned a type at the initialization' do
    expect(element.type).to eq :rock
  end
  it 'set a random element if nil is passed' do
    allow(described_class::ELEMENTS).to receive(:sample).and_return(:rock)
    element = described_class.new nil
    expect(element.type).to eq :rock
  end
  it 'raise an error if element passed is not valid' do
    msg = 'Element not valid'
    expect { described_class.new 'not_valid' }.to raise_error msg
  end
  describe '#beats?' do
    it 'returns true if the element type beats the one of the other element' do
      other = described_class.new 'scissors'
      expect(element.beats?(other)).to be true
    end
  end
  describe '#same_type?' do
    it 'returns true if the element type is the same of the other element' do
      other = described_class.new 'rock'
      expect(element.same_type?(other)).to be true
    end
  end
end
