require './lib/game.rb'

describe Game do
  subject(:game) { described_class.new }
  describe '#random_choice' do
    it 'Can return a rock' do
      srand(2)
      expect(game.random_choice).to eq 'rock'
    end

    it 'Can return scissors' do
      srand(3)
      expect(game.random_choice).to eq 'scissors'
    end

    it 'Can return paper' do
      srand(1)
      expect(game.random_choice).to eq 'paper'
    end


  end
end
