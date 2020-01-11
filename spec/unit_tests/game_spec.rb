require 'game'

describe Game do
  describe '#computer_choice' do
    it 'returns either Rock Paper or Scissors' do
      subject = described_class.new("John")
      expect(subject.computer_choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
end