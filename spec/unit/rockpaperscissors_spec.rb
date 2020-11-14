require 'rockpaperscissors'

describe RockPaperScissors do
  let(:player1) { double :player, name: "Brian", score: 0 }
  let(:player2) { double :player2, name: "Partario", score: 0 }
  let(:testgame) { RockPaperScissors.new(player1, player2) }

  it "initalizes with two players" do
    expect(testgame).to be_an_instance_of(RockPaperScissors)
  end

  describe "#new_game" do
    it "instantiates a new game as a class variable and returns it with #instance" do
      RockPaperScissors.new_game(player1, player2)
      expect(RockPaperScissors.instance).to be_an_instance_of(RockPaperScissors)
    end
  end

  describe "#play_round" do
    it "identifies a draw and doesn't change anyone's score, but increments round counter" do
      expect(testgame.play_round(:scissors, :scissors)).to eq(:draw)
      expect(testgame.round).to eq(1)
    end

    it "indentifies a win and adds to player1 score" do
      expect(player1).to receive(:score=).with(1)
      expect(testgame.play_round(:paper, :rock)).to eq(:win)
    end

    it "identifies a loss and adds to player2 score" do
      expect(player2).to receive(:score=).with(1)
      expect(testgame.play_round(:rock, :paper)).to eq(:loss)
    end
  end
end