require 'game'

describe Game do

  subject(:game) { Game.new('Tomas', "Computer") }

  describe '#self.instance' do
    it 'allows access to an instance of Game' do
      game = Game.create("Tomas", "Computer")
      expect(Game.instance).to eq game
    end
  end

  describe '#self.create' do
    it 'creates a new instance of Game' do
      game = Game.create("Tomas", "Computer")
      expect(game).to eq game
    end
  end

  describe '#play' do
    context "player wins" do
      it "expects rock to beat scissors" do
        game.play(:rock, :scissors)
        expect(game.result).to eq :win
      end

      it "expects paper to beat rock" do
        game.play(:paper, :rock)
        expect(game.result).to eq :win
      end

      it "expects scissors to beat paper" do
        game.play(:scissors, :paper)
        expect(game.result).to eq :win
      end
    end

    context "player loses" do
      it "expects rock to beat scissors" do
        game.play(:scissors, :rock)
        expect(game.result).to eq :lose
      end

      it "expects paper to beat rock" do
        game.play(:rock, :paper)
        expect(game.result).to eq :lose
      end

      it "expects scissors to beat paper" do
        game.play(:paper, :scissors)
        expect(game.result).to eq :lose
      end
    end

    context "draw" do
      it "expects scissors to draw with scissors" do
        game.play(:scissors, :scissors)
        expect(game.result).to eq :draw
      end

      it "expects paper to draw with paper " do
        game.play(:paper, :paper)
        expect(game.result).to eq :draw
      end

      it "expects rock to draw with rock" do
        game.play(:rock, :rock)
        expect(game.result).to eq :draw
      end
    end
  end
end
