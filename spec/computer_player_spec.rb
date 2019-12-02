require 'computer_player'

describe ComputerPlayer do
  let(:moves) { [:rock, :paper, :scissors] }
  let(:hierarchy) { double :hierarchy, moves: moves }

  subject { described_class.new hierarchy }

  describe '#move' do
    it "should be one of the moves for the hierarchy" do
      expect(moves).to include subject.move
    end

    it "should be roughly equal" do
      frequency = 9999.times.reduce(Hash.new(0)) { |res| res[subject.move] += 1; res }
      moves.each { |move| expect(frequency[move]).to be_within(300).of(3333) }
    end
  end
end
