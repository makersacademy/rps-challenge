require_relative '../../paper'

describe Paper do
  describe 'returns an explanation depending on the selected turns' do
    it "returns Scissors cut Paper! for turns including Paper and Scissors" do
      expect(subject.explanation("Scissors")).to eq "Scissors cut Paper!"
    end
    it 'returns Paper disproves Spock! for turns including Paper and Spock' do
      expect(subject.explanation("Spock")).to eq "Paper disproves Spock!"
    end
    it 'returns Paper covers Rock! for turns including Paper and Rock' do
      expect(subject.explanation("Rock")).to eq "Paper covers Rock!"
    end
    it 'returns Great minds think alike! when choices are the same' do
      expect(subject.explanation("Paper")).to eq "Great minds think alike!"
    end
    it 'returns Lizard eats Paper! for turns including Lizard and Paper' do
      expect(subject.explanation("Lizard")).to eq "Lizard eats Paper!"
    end
  end
  describe 'it correctly calculates the winner' do
    it 'Lizard is selected as the winner over Paper' do
      expect(subject.winner("Lizard", "Caesar", "Computer")).to eq "Computer"
    end
    it 'Paper is selected as the winner over Spock' do
      expect(subject.winner("Spock", "Caesar", "Computer")).to eq "Caesar"
    end
    it 'Paper is selected as the winner over Rock' do
      expect(subject.winner("Rock", "Caesar", "Computer")).to eq "Caesar"
    end
    it 'Both choosing Paper returns a Tie' do
      expect(subject.winner("Paper", "Caesar", "Computer")).to eq "Nobody won - TIE"
    end
    it 'Scissors are selected as the winner over Paper' do
      expect(subject.winner("Scissors", "Caesar", "Computer")).to eq "Computer"
    end
  end
end
