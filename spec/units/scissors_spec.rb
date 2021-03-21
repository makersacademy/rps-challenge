require_relative '../../scissors'

describe Scissors do
  describe 'returns an explanation depending on the selected turns' do
    it "returns Scissors cut Paper! for turns including Paper and Scissors" do
      expect(subject.explanation("Paper")).to eq "Scissors cut Paper!"
    end
    it 'returns Spock smashes Scissors! for turns including Scissors and Spock' do
      expect(subject.explanation("Spock")).to eq "Spock smashes Scissors!"
    end
    it 'returns Rock blunts Scissors! for turns including Scissors and Rock' do
      expect(subject.explanation("Rock")).to eq "Rock blunts Scissors!"
    end
    it 'returns Great minds think alike! when choices are the same' do
      expect(subject.explanation("Scissors")).to eq "Great minds think alike!"
    end
    it "returns Scissors cut Lizard's head off! for turns including Lizard and Scissors" do
      expect(subject.explanation("Lizard")).to eq "Scissors cut Lizard's head off!"
    end
  end
  describe 'it correctly calculates the winner' do
    it 'Scissors are selected as the winner over Lizard' do
      expect(subject.winner("Lizard", "Caesar", "Computer")).to eq "Caesar"
    end
    it 'Spock is selected as the winner over Scissors' do
      expect(subject.winner("Spock", "Caesar", "Computer")).to eq "Computer"
    end
    it 'Scissors are selected as the winner over Paper' do
      expect(subject.winner("Paper", "Caesar", "Computer")).to eq "Caesar"
    end
    it 'Both choosing Scissors returns a Tie' do
      expect(subject.winner("Scissors", "Caesar", "Computer")).to eq "Nobody won - TIE"
    end
    it 'Rock is selected as the winner over Scissors' do
      expect(subject.winner("Rock", "Caesar", "Computer")).to eq "Computer"
    end
  end
end
