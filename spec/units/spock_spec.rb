require_relative '../../spock'

describe Spock do
  describe 'returns an explanation depending on the selected turns' do
    it "returns Spock smashes Scissors! for turns including Spock and Scissors" do
      expect(subject.explanation("Scissors")).to eq "Spock smashes Scissors!"
    end
    it 'returns Paper disproves Spock! for turns including Paper and Spock' do
      expect(subject.explanation("Paper")).to eq "Paper disproves Spock!"
    end
    it 'returns Spock vapourises Rock! for turns including Rock and Spock' do
      expect(subject.explanation("Rock")).to eq "Spock vapourises Rock!"
    end
    it 'returns Great minds think alike! when choices are the same' do
      expect(subject.explanation("Spock")).to eq "Great minds think alike!"
    end
    it "returns Lizard poisons Spock! for turns including Lizard and Spock" do
      expect(subject.explanation("Lizard")).to eq "Lizard poisons Spock!"
    end
  end
  describe 'it correctly calculates the winner' do
    it 'Spock is selected as the winner over Scissors' do
      expect(subject.winner("Scissors", "Caesar", "Computer")).to eq "Caesar"
    end
    it 'Spock is selected as the winner over Rock' do
      expect(subject.winner("Rock", "Caesar", "Computer")).to eq "Caesar"
    end
    it 'Lizard is selected as the winner over Spock' do
      expect(subject.winner("Lizard", "Caesar", "Computer")).to eq "Computer"
    end
    it 'Both choosing Spock returns a Tie' do
      expect(subject.winner("Spock", "Caesar", "Computer")).to eq "Nobody won - TIE"
    end
    it 'Paper is selected as the winner over Spock' do
      expect(subject.winner("Paper", "Caesar", "Computer")).to eq "Computer"
    end
  end
end
