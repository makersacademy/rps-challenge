require 'game'

describe Game do
  let(:player_nil) {double (:player), choice: nil}
  let(:player_rock) {double (:player), choice: :Rock}
  let(:player_scissors) {double (:player), choice: :Scissors}
  let(:player_paper) {double (:player), choice: :Paper}

  describe '#check_winner' do
    it '#check_winner returns an error if either player has not made a choice' do
      subject = described_class.new(player_nil, player_scissors)
      expect{subject.check_winner}.to raise_error "Not all players have made their selection!"
    end

    it '#check_winner returns player1 (rock>scissors)' do
      subject = described_class.new(player_rock, player_scissors)
      expect(subject.check_winner).to be(player_rock)
    end

    it '#check_winner returns player1 (scissors>paper)' do
      subject = described_class.new(player_scissors, player_paper)
      expect(subject.check_winner).to be(player_scissors)
    end

    it '#check_winner returns player1 (paper>rock)' do
      subject = described_class.new(player_rock, player_paper)
      expect(subject.check_winner).to be(player_paper)
    end

    it '#check_winner recognises a draw' do
      subject = described_class.new(player_rock, player_rock)
      expect(subject.check_winner).to eq("It's a draw!!")
    end
  end
end
