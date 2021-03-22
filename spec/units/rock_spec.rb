require_relative '../../rock'

describe Rock do
  describe 'returns an explanation depending on the selected turns' do
    it 'returns Rock blunts Scissors! for turns including Rock and Scissors' do
      expect(subject.explanation("Scissors")).to eq "Rock blunts Scissors!"
    end
    it 'returns Spock vapourises Rock! for turns including Rock and Spock' do
      expect(subject.explanation("Spock")).to eq "Spock vapourises Rock!"
    end
    it 'returns Rock crushes Lizard! for turns including Lizard and Rock' do
      expect(subject.explanation("Lizard")).to eq "Rock crushes Lizard!"
    end
    it 'returns Great minds think alike! when choices are the same' do
      expect(subject.explanation("Rock")).to eq "Great minds think alike!"
    end
    it 'returns Paper covers Rock! for turns including Rock and Paper' do
      expect(subject.explanation("Paper")).to eq "Paper covers Rock!"
    end
  end
  describe 'it correctly calculates the winner' do
    it 'Rock is selected as the winner over scissors' do
      expect(subject.winner("Scissors", "Caesar", "Computer")).to eq "Caesar"
    end
    it 'Paper is selected as the winner over rock' do
      expect(subject.winner("Paper", "Caesar", "Computer")).to eq "Computer"
    end
    it 'Spock is selected as the winner over Rock' do
      expect(subject.winner("Spock", "Caesar", "Computer")).to eq "Computer"
    end
    it 'Both choosing Rock returns a Tie' do
      expect(subject.winner("Rock", "Caesar", "Computer")).to eq "Nobody won - TIE"
    end
    it 'Rock is selected as the winner over Lizard' do
      expect(subject.winner("Lizard", "Caesar", "Computer")).to eq "Caesar"
    end
  end
end
