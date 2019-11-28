require 'game'

describe Game do
  let(:hierarchy) { double :hierarchy, wins: nil }
  let(:ai) { double :computer_player, move: :com_move }
  let(:ai_class) { double :computer_class, new: ai }
  subject { described_class.new(hierarchy, ai) }

  describe '#play' do
    it "should return nil if it's a draw" do
      expect(subject.play(:p1_move)).to be_nil
      expect(subject.result).to be_nil
    end

    it "should return :player1 if player1 wins" do
      allow(hierarchy).to receive(:wins).and_return(:p1_move)
      expect(subject.play(:p1_move)).to eq :player1
      expect(subject.result).to eq :player1
    end

    it "should return :player2 if player2 wins" do
      allow(hierarchy).to receive(:wins).and_return(:com_move)
      expect(subject.play(:p1_move)).to eq :player2
      expect(subject.result).to eq :player2
    end
  end

  describe '#player1_move' do
    it "should return nil if nothing has been played yet" do
      expect(subject.player1_move).to be_nil
    end

    it "should return the move if the game has been played" do
      subject.play(:p1_move)
      expect(subject.player1_move).to eq :p1_move
    end
  end

  describe '#player2_move' do
    it "should return nil if nothing has been played yet" do
      expect(subject.player2_move).to be_nil
    end

    it "should return the move if the game has been played" do
      subject.play(:p1_move)
      expect(subject.player2_move).to eq :com_move
    end
  end
end
