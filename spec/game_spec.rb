describe Game do
  let(:subject) { described_class.new }
  describe "#get_random_choice" do
    it 'returns a random choice' do
      allow(subject).to receive(:rock)
      expect(subject.computer_choice).to eq("rock")
    end
  end
end