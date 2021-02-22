require "score"

describe Score do
  let(:player1) { double :Player }
  let(:player2) { double :Player }
  subject { described_class.new([player1, player2])}
  before(:each) do
    allow(player1).to receive(:ID).and_return(1)
    allow(player2).to receive(:ID).and_return(1)
  end
  
  context "player 1 wins" do
    it "(rock beats scissors)" do
      allow(player1).to receive(:move).and_return("R")
      allow(player2).to receive(:move).and_return("S")
      expect(subject.winner?).to eq player1
      expect(subject.draw?).to be false
    end

    it "(scissors beats paper)" do
      allow(player1).to receive(:move).and_return("S")
      allow(player2).to receive(:move).and_return("P")
      expect(subject.winner?).to eq player1
      expect(subject.draw?).to be false
    end

    it "(paper beats rock)" do
      allow(player1).to receive(:move).and_return("P")
      allow(player2).to receive(:move).and_return("R")
      expect(subject.winner?).to eq player1
      expect(subject.draw?).to be false
    end
  end

  context "player 2 wins" do
    it "(rock beats scissors)" do
      allow(player1).to receive(:move).and_return("S")
      allow(player2).to receive(:move).and_return("R")
      expect(subject.winner?).to eq player2
      expect(subject.draw?).to be false
    end

    it "(scissors beats paper)" do
      allow(player1).to receive(:move).and_return("P")
      allow(player2).to receive(:move).and_return("S")
      expect(subject.winner?).to eq player2
      expect(subject.draw?).to be false
    end

    it "player 2 wins (paper beats rock)" do
      allow(player1).to receive(:move).and_return("R")
      allow(player2).to receive(:move).and_return("P")
      expect(subject.winner?).to eq player2
      expect(subject.draw?).to be false
    end

  end



  it "players draw" do
    ["R", "P", "S"].each do |move|
      allow(player1).to receive(:move).and_return(move)
      allow(player2).to receive(:move).and_return(move)
      expect(subject.winner?).to eq nil
      expect(subject.draw?).to eq true
    end
  end
end