require 'element'

describe Element do
  let(:element) { described_class.new 'rock' }
  let(:other) { described_class.new 'scissors' }
  it 'has been assigned a type at the initialization' do
    expect(element.type).to eq :rock
  end
  describe '#beats?' do
    it 'returns true if the element type beats the one of the other element' do
      expect(element.beats?(other)).to be true
    end
  end
end
