require_relative '../../calc_winner'

describe CalcWinner do
  context '#the game correctly identifies the winner' do
    it 'Rock is selected as the winner over scissors' do
      expect(subject.winner("Rock","Scissors","Caesar","Computer")).to eq "Caesar"
    end
    it 'Scissors is selected as the winner over paper' do
      expect(subject.winner("Paper","Scissors","Caesar","Computer")).to eq "Computer"
    end
    it 'Paper is selected as the winner over rock' do
      expect(subject.winner("Rock","Paper","Caesar","Computer")).to eq "Computer"
    end
    it 'Spock is selected as the winner over scissors' do
      expect(subject.winner("Spock","Scissors","Caesar","Computer")).to eq "Caesar"
    end
    it 'Spock is selected as the winner over Rock' do
      expect(subject.winner("Spock","Rock","Caesar","Computer")).to eq "Caesar"
    end
    it 'Lizard is selected as the winner over paper' do
      expect(subject.winner("Paper","Lizard","Caesar","Computer")).to eq "Computer"
    end
  end
end
