require 'game'

describe Game do
  let(:subject) { described_class.new }
  describe "#get_random_choice" do
    it 'returns a random choice' do
      allow(subject).to receive(:get_random_choice).and_return("Rock")
      subject.get_random_choice
      expect(subject.computer_choice).to eq("Rock")
    end
  end
end