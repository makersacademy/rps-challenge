require 'game'

describe Game do

  subject(:game) { described_class.new }

  describe '#choice' do
    it 'shows a random choice from an array' do
      expect(game.choice).to satisfy { |choice| ['Rock', 'Paper', 'Scissors'].include?(choice) }
    end
  end

  describe '#result' do
    it 'should state that rock beats scissors' do
      expect(game.result('Rock', 'Scissors')).to eq('Rock wins!')
    end
    it 'should state that scissors beats paper' do
      expect(game.result('Scissors', 'Paper')).to eq('Scissors wins!')
    end
    it "should state that Paper beats Rock" do
      expect(game.result('Rock', 'Paper')).to eq('Paper wins!')
    end
    it "should declare a draw if the choice is the same" do
      expect(game.result('Rock', 'Rock')).to eq("It's a draw!") 
    end
  end
end
