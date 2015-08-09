require 'player'

describe Player do
  let(:subject) {described_class.new("New_Player")}

  describe '#set_choice' do
    it 'turns the string provided into a symbol with the correct value' do
      selection =  "Paper"
      subject.set_choice selection
      expect(subject.choice).to be(:Paper)
    end

    it 'raises an error if the value provided is not valid' do
      selection = "Badger"
      expect(subject.set_choice selection).to eq('That is not a valid choice')
    end
  end
end
