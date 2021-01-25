require 'player'

describe Player do
  describe 'move' do
    subject { described_class.new("Anna") }
    it 'saves your move' do
      subject.move(:rock)
      moves = [:rock, :paper, :scissors]
      expect(moves).to include subject.moved
    end
  end
end
