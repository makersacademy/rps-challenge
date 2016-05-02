require 'computer'

describe Computer do
  subject(:computer) {described_class.new}
  DEFAULT_SCORE = 0

  describe '#initialize' do
    it 'should initialize with a default score' do
      expect(computer.score).to eq DEFAULT_SCORE
    end
    it 'should initialize with a defaule score' do
      expect(computer.score).to eq DEFAULT_SCORE
    end
  end

  describe '#self.create' do
    it 'should return create an instance of the computer class' do
      expect(Computer.create).to be_a(Computer)
    end
  end
end
