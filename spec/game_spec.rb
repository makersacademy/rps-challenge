require_relative '../lib/rps_game/game'

describe Game do

  let(:p1_move) {double(:p2_move)}
  let(:p2_move) {double(:p2_move)}
  
  context "when initialized" do
  
    it {is_expected.to respond_to(:reset)}
    it {is_expected.to respond_to(:rules)}
    it {is_expected.to respond_to(:p1_move).with(1).argument}
    it {is_expected.to respond_to(:p2_move).with(1).argument}

    it "has a rules hash" do
      expect(subject.rules.class).to eq Hash
    end
  
  end

  context "When playing" do
  
    it "Logic can return a draw" do
      subject.p1_move(:rock)
      subject.p2_move(:rock)
      expect(subject.play).to eq :draw
    end

    it "Logic can return win (p1)" do
      subject.p1_move(:rock)
      subject.p2_move(:scissors)
      expect(subject.play).to eq :p1_wins!
    end

    it "Logic can return a win (p2)" do
      subject.p1_move(:scissors)
      subject.p2_move(:rock)
      expect(subject.play).to eq :p2_wins!
    end

    it "records player score" do
      subject.p1_move(:scissors)
      subject.p2_move(:rock)
      subject.play
      expect(subject.p2_score).to eq 1
    end
  end
end
