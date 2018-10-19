require 'game'

describe Game do
  let(:player_1) { double(:player, name: "Alice", weapon: "ROCK") }
  let(:calculator) { double(:calculator)}
  let(:calculator_class) { double(:results_calculator) }
  subject(:game_1) { Game.new(player_1, calculator_class) }

  it "should be able to log a player's name" do
    expect(subject.player_1.name).to eq "Alice"
  end

  it "should be able to choose a weapon for a player" do
    chosen_weapon = "ROCK"
    expect(player_1).to receive(:choose_weapon).with(chosen_weapon)
    subject.choose_weapon(chosen_weapon)
  end

  it "can store a current game's data" do
    described_class.store_game(subject)
    expect(described_class.current_game).to eq subject
  end

  describe "#check_winner" do
    it "can ask calculator determine a winning player by choosing rand weapon" do
      allow(game_1).to receive(:random_weapon).and_return "SCISSORS"
      allow(calculator).to receive(:winner)
      expect(calculator_class).to receive(:new).with(player_1.weapon, "SCISSORS").and_return calculator
      subject.check_winner
    end
  end

end
