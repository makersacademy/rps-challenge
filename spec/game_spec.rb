require 'game'

describe Game do
  let(:player_1) { double(:player, name: "Alice") }
  let(:computer) { double(:computer, name: "RPSbot") }
  let(:calculator) { double(:calculator) }
  let(:calculator_class) { double(:results_calculator) }
  subject(:game_1) { Game.new(player_1, computer, calculator_class) }

  it "should be able to log a player's name" do
    expect(subject.player_1.name).to eq "Alice"
  end

  it "can store a current game's data" do
    described_class.store_game(subject)
    expect(described_class.current_game).to eq subject
  end

  describe "#winner" do
    it "can ask calculator determine a winning player by choosing rand weapon" do
      allow(calculator).to receive(:winner)
      expect(calculator_class).to receive(:new).with(player_1, computer).and_return calculator
      subject.winner
    end

    it "can determine a winner" do
      allow(calculator).to receive(:winner).and_return :player_1_wins
      allow(calculator_class).to receive(:new).with(player_1, computer).and_return calculator
      expect(subject.winner).to eq :player_1_wins
    end
  end
end
