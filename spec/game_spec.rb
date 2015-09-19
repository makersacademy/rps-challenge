require_relative '../lib/rps_game/game'

describe Game do

  let(:p1_move) {double(:p2_move)}
  let(:p2_move) {double(:p2_move)}
  
  context "when initialized" do
  
    it {is_expected.to respond_to(:rules)}
    it {is_expected.to respond_to(:p1_move).with(1).argument}
    it {is_expected.to respond_to(:p2_move).with(1).argument}

    it "has a rules hash" do
      expect(subject.rules.class).to eq Hash
    end
  
  end

  context "When playing"
  
    it "Logic can return a draw" do
      subject.p1_move(:r)
      subject.p2_move(:r)
      expect(subject.play).to eq :draw
    end

    it "Logic can return win (p1)" do
      subject.p1_move(:r)
      subject.p2_move(:s)
      expect(subject.play).to eq :p1_wins!
    end

    it "Logic can return a win (p2)" do
      subject.p1_move(:s)
      subject.p2_move(:r)
      expect(subject.play).to eq :p2_wins!
    end

end
