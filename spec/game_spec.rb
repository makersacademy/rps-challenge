require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) { described_class.new(player) }

  describe "#initialize" do
    it 'initializes game with a player' do
      expect(game.player).to eq player
    end
  end

  describe "#choose_weapon" do
    it 'stores player weapon choice' do
      game.choose_weapon("rock")
      expect(game.player_weapon).to eq :rock
    end
  end

  describe "#result" do
    context "player wins" do
      it "should return 'win'" do
        allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:scissors)
        game.choose_weapon("rock")
        game.computer_choose_weapon
        expect(game.result).to eq :won
      end
    end

    context "player loses" do
      it "should return 'lose'" do
        allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:scissors)
        game.choose_weapon("paper")
        game.computer_choose_weapon
        expect(game.result).to eq :lost
      end
    end

    context "game is a draw" do
      it "should return 'draw'" do
        allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:rock)
        game.choose_weapon("rock")
        game.computer_choose_weapon
        expect(game.result).to eq :tied
      end
    end
  end
end
