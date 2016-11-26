require 'game'

describe Game do
  subject(:game) { described_class.new(player1) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:weapon) { double :weapon }

  before do
    allow(player1).to receive(:new).and_return player1
    allow(player2).to receive(:new).and_return player2
  end

  context "when a new game is created" do
    it "stores the rules of rock paper scissors" do
      expect { Game::RULES }.not_to raise_error
    end

    it "stores a list of the weapons as a constant" do
      expect { Game::WEAPONS }.not_to raise_error
    end

    it { is_expected.to respond_to(:player1) }

    it { is_expected.to respond_to(:player2) }

    it "can store player 1's choice of weapon, this will be nil by default" do
      expect(game.player1_weapon).to be_nil
    end

    it "can store player 2's choice of weapon, this will be nil by default" do
      expect(game.player2_weapon).to be_nil
    end
  end

  context "when playing the game" do

    before do
      allow(weapon).to receive(:to_sym) { :rock }
    end

    it "allows player 1 to choose their weapon" do
      game.play_game(weapon)
      expect(game.player1_weapon).to eq :rock
    end

    it "allows player 2 to choose their weapon" do
      game.play_game(weapon)
      expect(game.player2_weapon).not_to be_nil
    end
  end
end
