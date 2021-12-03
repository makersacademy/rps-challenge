describe Computer do
  let(:subject) { described_class.new(randomiser) }
  let(:randomiser) { "Rock" }
  
  describe "#get_random_choice" do
    it 'returns a random choice' do
      allow(randomiser).to receive(:select_choice).and_return("Rock")
      subject.select_choice
      expect(subject.computer_choice).to eq("Rock")
    end
  end
end