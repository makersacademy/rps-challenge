require 'randomiser'

describe Randomiser do

  it{is_expected.to respond_to(:random_number)}

  allow(subject).to receive(:random_number).and_return(1)

  describe '#random_number' do
    it 'creates a random number' do
      expect(subject.random_number).to eq 1
    end
  end
end
