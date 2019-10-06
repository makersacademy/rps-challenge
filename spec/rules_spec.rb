require 'rules'

describe Rules do

  describe '#defeats?' do
    it 'paper defeats rock' do
      expect(subject.defeats?(:paper, :rock)).to eq true
    end

    it 'paper does not defeat scissors' do
      expect(subject.defeats?(:paper, :scissors)).to eq false
    end
  end
end
