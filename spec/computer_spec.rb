require 'computer'

describe Computer do
  let(:randomiser) { double("Randomiser", :call => :rock) }
  let(:subject) { described_class.new(randomiser) }
  
  describe "#get_random_choice" do
    it 'returns a random choice' do
      subject.select_choice
      expect(subject.choice).to eq(:rock)
    end
  end
end
