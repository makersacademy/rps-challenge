require './lib/computer'

describe Computer do
  describe '#pick' do
    it "returns the computers's pick" do
      srand(2) # forces .sample to always return the first value in the array
      expect(subject.pick).to eq(:rock)
    end
  end
end
