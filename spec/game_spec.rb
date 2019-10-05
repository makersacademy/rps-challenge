require 'game'

describe Game do

  describe '#match' do
    it 'checks if the match is a tie' do
      expect(subject.match('Rock', 'Rock')).to eq 'This is a tie!'
    end

    it 'checks if player wins' do
      expect(subject.match('Rock', 'Scissors')).to eq 'You win!'
    end

    it 'checks if player loose' do
      expect(subject.match('Rock', 'Paper')).to eq 'You loose!'
    end
  end
end
