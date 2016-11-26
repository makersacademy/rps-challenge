require 'game'

describe Game do
  subject(:game) { described_class.new(player1) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

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
  end
end
