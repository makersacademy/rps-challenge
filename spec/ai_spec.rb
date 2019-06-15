require 'ai'

describe Ai do

  describe '#random_move' do
    it 'makes a random move of either rock, paper or scissors' do
      expect(['Rock','Paper','Scissors']).to include(subject.random_move)
    end
  end
end