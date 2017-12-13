require 'choices.rb'

describe Choice do
  subject(:game) { described_class.new }
  describe '#new_game' do
    it 'should return that the player wins' do
      expect(game.new_game(:rock, :scissors)).to eq "You win"
    end

    it 'should return that it is a draw' do
      expect(game.new_game(:rock, :rock)).to eq "It's a draw"
    end

    it 'should return that the player loses' do
      expect(game.new_game(:rock, :paper)).to eq "Computer wins"
    end
  end
end
