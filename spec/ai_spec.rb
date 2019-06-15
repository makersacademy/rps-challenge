require 'ai'

describe Ai do

  subject(:ai) { Ai.new }


  describe '#random_move' do
    it 'makes a random move of either rock, paper or scissors' do
      expect(['Rock','Paper','Scissors']).to include(ai.random_move)
    end
  end

  describe '#initialize' do
    it 'is initialised with a random move' do
      expect(['Rock','Paper','Scissors']).to include(ai.move)
    end

    it 'is initialised with a name WOPR (War Games)' do
      expect(ai.name).to eq('WOPR')
    end
  end
end