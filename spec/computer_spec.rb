require 'computer'

describe Computer do
  let(:randomiser) { double("Randomiser", :call => "Rock") }
  let(:subject) { described_class.new(randomiser) }
  
  describe "#get_random_choice" do
    it 'returns a random choice' do
      subject.select_choice
      expect(subject.choice).to eq("Rock")
    end
  end
end