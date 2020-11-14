require 'game'

describe Game do
  let(:dumb) { double :dumb, choice: nil }
  let(:dumber) { double :dumber, choice: nil }
  subject { Game.new(dumb, dumber) }

  it "Correctly returns player1" do
    expect(subject.player_1).to be(dumb)
  end

  it "Correctly returns player2" do
    expect(subject.player_2).to be(dumber)
  end

  it "Assigns choice when set_choice called" do
    expect(dumb).to receive(:choice=)
    subject.set_choice(subject.player_1, "scissors")
  end

  it "Assigns choice when rand_choice called" do
    expect(dumb).to receive(:choice=)
    subject.rand_choice(subject.player_1)
  end

  it "Returns draw in error state, when players dont have a selection" do
    allow(dumb).to receive(:choice).and_return(nil)
    allow(dumber).to receive(:choice).and_return(nil)
    expect(subject.who_won).to eq("draw")
  end

  context "player 1 choosing rock" do
    it "Returns draw when both choose rock" do
      allow(dumb).to receive(:choice).and_return("rock")
      allow(dumber).to receive(:choice).and_return("rock")
      expect(subject.who_won).to eq("draw")
    end
    it "Returns player 2 when: p1 rock, p2 paper" do
      allow(dumb).to receive(:choice).and_return("rock")
      allow(dumber).to receive(:choice).and_return("paper")
      allow(dumber).to receive(:you_won)
      expect(subject.who_won).to be(dumber)
    end
    it "Returns player 1 when: p1 rock, p2 scissors" do
      allow(dumb).to receive(:choice).and_return("rock")
      allow(dumber).to receive(:choice).and_return("scissors")
      allow(dumb).to receive(:you_won)
      expect(subject.who_won).to be(dumb)
    end
  end

  context "player 1 choosing paper" do
    it "Returns draw when both choose paper" do
      allow(dumb).to receive(:choice).and_return("paper")
      allow(dumber).to receive(:choice).and_return("paper")
      expect(subject.who_won).to eq("draw")
    end
    it "Returns player 1 when: p1 paper, p2 rock" do
      allow(dumb).to receive(:choice).and_return("paper")
      allow(dumber).to receive(:choice).and_return("rock")
      allow(dumb).to receive(:you_won)
      expect(subject.who_won).to be(dumb)
    end
    it "Returns player 2 when: p1 paper, p2 scissors" do
      allow(dumb).to receive(:choice).and_return("paper")
      allow(dumber).to receive(:choice).and_return("scissors")
      allow(dumber).to receive(:you_won)
      expect(subject.who_won).to be(dumber)
    end
  end

  context "player 1 choosing scissors" do
    it "Returns draw when both choose scissors" do
      allow(dumb).to receive(:choice).and_return("scissors")
      allow(dumber).to receive(:choice).and_return("scissors")
      expect(subject.who_won).to eq("draw")
    end
    it "Returns player 2 when: p1 scissors, p2 rock" do
      allow(dumb).to receive(:choice).and_return("scissors")
      allow(dumber).to receive(:choice).and_return("rock")
      allow(dumber).to receive(:you_won)
      expect(subject.who_won).to be(dumber)
    end
    it "Returns player 1 when: p1 scissors, p2 paper" do
      allow(dumb).to receive(:choice).and_return("scissors")
      allow(dumber).to receive(:choice).and_return("paper")
      allow(dumb).to receive(:you_won)
      expect(subject.who_won).to be(dumb)
    end
  end

end
