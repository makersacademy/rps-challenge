require 'randomiser'

describe Randomiser do

  let(:randomiser) { described_class.new }

  it{is_expected.to respond_to(:random_number)}

  describe '#random_number' do
    it 'creates a random number' do
      #allow(randomiser).to receive{:random_number}.and_return 1
      expect(randomiser.random_number).to be_an Integer
    end
  end
end
