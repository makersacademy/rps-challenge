require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:computer) { double(:computer, computer_choice: :Rock) }

  describe '#computer_choice' do
    it 'should return Rock' do
      expect(subject.computer_choice).to eq :Rock
    end
  end
end
