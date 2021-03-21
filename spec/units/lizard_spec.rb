require_relative '../../lizard'

describe Lizard do
  describe 'returns an explanation depending on the selected turns' do
    it "returns Scissors cut Lizard's head off!! for turns including Lizard and Scissors" do
      expect(subject.explanation("Scissors")).to eq "Scissors cut Lizard's head off!"
    end
    it 'returns Lizard poisons Spock! for turns including Lizard and Spock' do
      expect(subject.explanation("Spock")).to eq "Lizard poisons Spock!"
    end
    it 'returns Rock crushes Lizard! for turns including Lizard and Rock' do
      expect(subject.explanation("Rock")).to eq "Rock crushes Lizard!"
    end
    it 'returns Great minds think alike! when choices are the same' do
      expect(subject.explanation("Lizard")).to eq "Great minds think alike!"
    end
    it 'returns Lizard eats Paper! for turns including Lizard and Paper' do
      expect(subject.explanation("Paper")).to eq "Lizard eats Paper!"
    end
  end
  describe 'it correctly calculates the winner' do
    it 'Rock is selected as the winner over Lizard' do
      expect(subject.winner("Rock", "Caesar", "Computer")).to eq "Computer"
    end
    it 'Lizard is selected as the winner over Paper' do
      expect(subject.winner("Paper", "Caesar", "Computer")).to eq "Caesar"
    end
    it 'Lizard is selected as the winner over Spock' do
      expect(subject.winner("Spock", "Caesar", "Computer")).to eq "Caesar"
    end
    it 'Both choosing Lizard returns a Tie' do
      expect(subject.winner("Lizard", "Caesar", "Computer")).to eq "Nobody won - TIE"
    end
    it 'Scissors are selected as the winner over Lizard' do
      expect(subject.winner("Scissors", "Caesar", "Computer")).to eq "Computer"
    end
  end
end
