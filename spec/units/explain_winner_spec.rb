require_relative '../../explain_winner'

describe ExplainWinner do
  describe 'returns an explanation depending on the selected turns' do
    it 'returns Rock blunts Scissors! for turns including Rock and Scissors' do
      expect(subject.explanation_code("Rock","Scissors")).to eq "Rock blunts Scissors!"
    end
    it 'returns Spock vapourises Rock! for turns including Rock and Spock' do
      expect(subject.explanation_code("Rock","Spock")).to eq "Spock vapourises Rock!"
    end
    it 'returns Rock crushes Lizard! for turns including Lizard and Rock' do
      expect(subject.explanation_code("Rock","Lizard")).to eq "Rock crushes Lizard!"
    end
    it 'returns Lizard eats Paper! for turns including Lizard and Paper' do
      expect(subject.explanation_code("Lizard","Paper")).to eq "Lizard eats Paper!"
    end
    it 'returns Great minds think alike! when choices are the same' do
      expect(subject.explanation_code("Scissors","Scissors")).to eq "Great minds think alike!"
    end
    it 'returns Paper disproves Spock! for turns including Spock and Paper' do
      expect(subject.explanation_code("Paper","Spock")).to eq "Paper disproves Spock!"
    end
    it 'returns Paper covers Rock! for turns including Rock and Paper' do
      expect(subject.explanation_code("Rock","Paper")).to eq "Paper covers Rock!"
    end
  end
end
