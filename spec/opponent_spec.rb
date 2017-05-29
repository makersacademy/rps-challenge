require 'opponent'

describe Opponent do
  subject(:opponent) { described_class.new }

  describe '#opponent_choice' do
    it 'allows the opponent to choose randomly' do
      expect(opponent.weapons).to include(opponent.choose_hand)
    end
  end
end
