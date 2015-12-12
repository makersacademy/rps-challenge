require 'human'

describe Human do
  name = 'J. Bloggs'
  subject(:human) { described_class.new(name) }

  describe '#initialize' do
    it 'inherits name attribute from player class' do
      expect(human.name).to eq name
    end
  end

  describe '#choose' do
    it 'can receive a choice of hand shape' do
      human.choose :rock
      expect(human.choice).to eq :rock
    end
  end
end
