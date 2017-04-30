require 'human_player'

describe HumanPlayer do
  subject(:human_player) { described_class.new }
  describe '#choice' do
    it 'returns its arg capitalized' do
      expect(human_player.choice("rock")).to eq "Rock"
    end
  end
end
