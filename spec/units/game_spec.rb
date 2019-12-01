require "game"

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:game) { Game.new(player, computer) }

  describe "#player" do
    it "should return the player" do
      expect(game.player).to eq player
    end
  end

  describe "#result" do
    context "when player choses :rock" do
      let(:player) { double :player, choice: :rock }

      it "should return :tie if the computer chooses :rock" do
        allow(computer).to receive(:choice).and_return :rock
        expect(game.result).to eq :tie
      end

      it "should return :win if the computer chooses :scissors" do
        allow(computer).to receive(:choice).and_return :scissors
        expect(game.result).to eq :win
      end

      it "should return :win if the computer chooses :lizard" do
        allow(computer).to receive(:choice).and_return :lizard
        expect(game.result).to eq :win
      end

      it "should return :lose if the computer chooses :paper" do
        allow(computer).to receive(:choice).and_return :paper
        expect(game.result).to eq :lose
      end

      it "should return :lose if the computer chooses :spock" do
        allow(computer).to receive(:choice).and_return :spock
        expect(game.result).to eq :lose
      end
    end

    context "when player choses :paper" do
      let(:player) { double :player, choice: :paper }

      it "should return :tie if the computer chooses :paper" do
        allow(computer).to receive(:choice).and_return :paper
        expect(game.result).to eq :tie
      end

      it "should return :win if the computer chooses :spock" do
        allow(computer).to receive(:choice).and_return :spock
        expect(game.result).to eq :win
      end

      it "should return :win if the computer chooses :rock" do
        allow(computer).to receive(:choice).and_return :rock
        expect(game.result).to eq :win
      end
  
      it "should return :lose if the computer chooses :scissors" do
        allow(computer).to receive(:choice).and_return :scissors
        expect(game.result).to eq :lose
      end
  
      it "should return :lose if the computer chooses :lizard" do
        allow(computer).to receive(:choice).and_return :lizard
        expect(game.result).to eq :lose
      end
    end

    context "when player choses :scissors" do
      let(:player) { double :player, choice: :scissors }

      it "should return :tie if the computer chooses :scissors" do
        allow(computer).to receive(:choice).and_return :scissors
        expect(game.result).to eq :tie
      end

      it "should return :win if the computer chooses :lizard" do
        allow(computer).to receive(:choice).and_return :lizard
        expect(game.result).to eq :win
      end
  
      it "should return :win if the computer chooses :paper" do
        allow(computer).to receive(:choice).and_return :paper
        expect(game.result).to eq :win
      end

      it "should return :lose if the computer chooses :spock" do
        allow(computer).to receive(:choice).and_return :spock
        expect(game.result).to eq :lose
      end
  
      it "should return :lose if the computer chooses :rock" do
        allow(computer).to receive(:choice).and_return :rock
        expect(game.result).to eq :lose
      end
    end

    context "when player choses :spock" do
      let(:player) { double :player, choice: :spock }

      it "should return :tie if the computer chooses :spock" do
        allow(computer).to receive(:choice).and_return :spock
        expect(game.result).to eq :tie
      end

      it "should return :win if the computer chooses :rock" do
        allow(computer).to receive(:choice).and_return :rock
        expect(game.result).to eq :win
      end
  
      it "should return :win if the computer chooses :scissors" do
        allow(computer).to receive(:choice).and_return :scissors
        expect(game.result).to eq :win
      end

      it "should return :lose if the computer chooses :lizard" do
        allow(computer).to receive(:choice).and_return :lizard
        expect(game.result).to eq :lose
      end
  
      it "should return :lose if the computer chooses :paper" do
        allow(computer).to receive(:choice).and_return :paper
        expect(game.result).to eq :lose
      end
    end

    context "when player choses :lizard" do
      let(:player) { double :player, choice: :lizard }

      it "should return :tie if the computer chooses :lizard" do
        allow(computer).to receive(:choice).and_return :lizard
        expect(game.result).to eq :tie
      end

      it "should return :win if the computer chooses :paper" do
        allow(computer).to receive(:choice).and_return :paper
        expect(game.result).to eq :win
      end
  
      it "should return :win if the computer chooses :spock" do
        allow(computer).to receive(:choice).and_return :spock
        expect(game.result).to eq :win
      end

      it "should return :lose if the computer chooses :rock" do
        allow(computer).to receive(:choice).and_return :rock
        expect(game.result).to eq :lose
      end
  
      it "should return :lose if the computer chooses :scissors" do
        allow(computer).to receive(:choice).and_return :scissors
        expect(game.result).to eq :lose
      end
    end
  end

  describe "#update_player_choice" do
    it "should return the updated player's choice" do
      allow(player).to receive(:update_choice).and_return "Rock"
      expect(game.update_player_choice("Rock")).to eq "Rock"
    end
  end
end
