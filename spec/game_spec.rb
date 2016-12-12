require 'game'

describe Game do

  subject(:game_rock) { described_class.new("rock") }
  subject(:game_paper) { described_class.new("paper") }
  subject(:game_scissors) { described_class.new("scissors") }
  let(:computer) { double :computer }


  describe "Initialization" do

    it "accept choice on initialization" do
      expect(game_rock.choice).to eq :rock
    end

    it "can create a new Game" do
      expect(Game.create("Rock")).to be_an_instance_of(Game)
    end

    it "can reference current instance of Game" do
      expect(Game.instance).to be_an_instance_of(Game)
    end

    it "computer chooses on initialization" do
      expect([:rock, :paper, :scissors]).to include(game_rock.computer_chooses)
    end

  end

  context "Results of the game" do
    it "returns win if user chooses Rock and computer chooses Scissors" do
      allow(game_rock).to receive(:computer_chooses).and_return :scissors
      expect(game_rock.outcome).to eq :win
    end

    it "returns win if user chooses Scissors and computer chooses Paper" do
      allow(game_scissors).to receive(:computer_chooses).and_return :paper
      expect(game_scissors.outcome).to eq :win
    end

    it "returns win if user chooses Paper and computer chooses Rock" do
      allow(game_paper).to receive(:computer_chooses).and_return :rock
      expect(game_paper.outcome).to eq :win
    end

    it "returns lose if user chooses Rock and computer chooses Paper" do
      allow(game_rock).to receive(:computer_chooses).and_return :paper
      expect(game_rock.outcome).to eq :lose
    end

    it "returns lose if user chooses Scissors and computer chooses Rock" do
      allow(game_scissors).to receive(:computer_chooses).and_return :rock
      expect(game_scissors.outcome).to eq :lose
    end

    it "returns lose if user chooses Paper and computer chooses Scissors" do
      allow(game_paper).to receive(:computer_chooses).and_return :scissors
      expect(game_paper.outcome).to eq :lose
    end

    it "returns draw if user and computer choose Rock" do
      allow(game_rock).to receive(:computer_chooses).and_return :rock
      expect(game_rock.outcome).to eq :tie
    end

    it "returns draw if user and computer choose Paper" do
      allow(game_paper).to receive(:computer_chooses).and_return :paper
      expect(game_paper.outcome).to eq :tie
    end

    it "returns draw if user and computer choose the Scissors" do
      allow(game_scissors).to receive(:computer_chooses).and_return :scissors
      expect(game_scissors.outcome).to eq :tie
    end
  end

end
