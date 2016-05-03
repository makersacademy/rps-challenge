require 'randomiser'

describe Randomiser do

  let(:randomiser) { described_class.new }

  describe '#random_number' do
    it 'creates a random number' do
      randomiser.computer
      expect(randomiser.num).to be_a Integer
    end
  end

  describe '#computer' do
    it 'associates a number to a computer move' do
      expect(randomiser.computer).to be_a String
    end
  end
end
