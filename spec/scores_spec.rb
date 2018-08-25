require 'scores'

describe Scores do
  describe '#decide_winner' do
    it 'decides the winner, given two string inputs' do
      expect(subject.decide_winner('rock', 'scissors')).to eq :p1
    end

    it 'decides the winner, given two string inputs' do
      expect(subject.decide_winner('scissors', 'rock')).to eq :p2
    end

    it 'returns :tie if both choose the same option' do
      expect(subject.decide_winner('rock', 'rock')).to eq :tie
    end
  end
end