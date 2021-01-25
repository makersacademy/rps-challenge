require 'computer'

describe Computer do
  describe 'move' do
    it 'initializes with a move' do
      moves = [:rock, :paper, :scissors]
      expect(moves).to include subject.moved
    end
  end
end
