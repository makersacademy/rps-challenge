require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) {described_class.new(player, computer)}


  describe "initialization" do

    it "has a player" do
      expect(game.player).to eq player
    end

    it "has a computer" do
      expect(game.computer).to eq computer
    end

    it "has getter/setter class methods" do
      described_class.create(player, computer)
      expect(described_class.instance.player).to eq player
    end
  end

  describe "choices" do
    it "returns player's choice" do
      allow(player).to receive(:choice).and_return(:rock)
      expect(game.player_choice).to eq :rock
    end
    it "returns computer's choice" do
      allow(computer).to receive(:choose_weapon).and_return(:paper)
      expect(game.computer_choice).to eq :paper
    end
  end

  context "playing a game" do
    describe "Player winning" do
      it "Player: Rock, Computer: Scissors." do
        allow(player).to receive(:choice).and_return(:rock)
        allow(computer).to receive(:choose_weapon).and_return(:scissors)
        expect(game.result).to eq :win
      end
      it "Player: Paper, Computer: Rock." do
        allow(player).to receive(:choice).and_return(:paper)
        allow(computer).to receive(:choose_weapon).and_return(:rock)
        expect(game.result).to eq :win
      end
      it "Player: Scissors, Computer: Paper." do
        allow(player).to receive(:choice).and_return(:scissors)
        allow(computer).to receive(:choose_weapon).and_return(:paper)
        expect(game.result).to eq :win
      end
    end
    describe "Computer winning" do
      it "Player: Rock, Computer: Paper." do
        allow(player).to receive(:choice).and_return(:rock)
        allow(computer).to receive(:choose_weapon).and_return(:paper)
        expect(game.result).to eq :lose
      end
      it "Player: Paper, Computer: Scissors." do
        allow(player).to receive(:choice).and_return(:paper)
        allow(computer).to receive(:choose_weapon).and_return(:scissors)
        expect(game.result).to eq :lose
      end
      it "Player: Scissors, Computer: Rock." do
        allow(player).to receive(:choice).and_return(:scissors)
        allow(computer).to receive(:choose_weapon).and_return(:rock)
        expect(game.result).to eq :lose
      end
    end
    describe "Ties" do
      it "Player: Rock, Computer: Rock." do
        allow(player).to receive(:choice).and_return(:rock)
        allow(computer).to receive(:choose_weapon).and_return(:rock)
        expect(game.result).to eq :tie
      end
      it "Player: Paper, Computer: Paper." do
        allow(player).to receive(:choice).and_return(:paper)
        allow(computer).to receive(:choose_weapon).and_return(:paper)
        expect(game.result).to eq :tie
      end
      it "Player: Scissors, Computer: Scissors." do
        allow(player).to receive(:choice).and_return(:scissors)
        allow(computer).to receive(:choose_weapon).and_return(:scissors)
        expect(game.result).to eq :tie
      end

    end
  end


end
