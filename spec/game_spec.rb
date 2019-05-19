require 'game'

describe Game do

  subject(:game) { described_class.new }

  describe '#choice' do
    it 'shows a random choice from an array' do
      expect(game.choice).to satisfy { |choice| ['Rock', 'Paper', 'Scissors'].include?(choice) }
    end
  end
end
