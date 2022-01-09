require 'match'

describe Match do
  context 'Decides winner' do
    subject { described_class.new('Rock', 'Scissors') }

    it 'checks who wins and loses' do
      subject.match_decider
      expect(subject.show_message).to eq 'Rock beats Scissors. You win!'
    end
  end
end
