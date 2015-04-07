require 'game'

describe Game do
  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1, choice: "Rock" }
  let(:player_2) { double :player_2, choice: "Scissors" }

  it "knows who player 1 is" do
    expect(game.player_1).to eq player_1
  end

  it "knows who player 2 is" do
    expect(game.player_2).to eq player_2
  end

  it "knows game is not ready when player 1 hasn't chosen" do
    allow(player_1).to receive(:chosen?).and_return false
    allow(player_2).to receive(:chosen?).and_return true
    expect(game.ready?).to eq false
  end

  it "knows game is not ready when player 2 hasn't chosen" do
    allow(player_1).to receive(:chosen?).and_return true
    allow(player_2).to receive(:chosen?).and_return false
    expect(game.ready?).to eq false
  end

  it "knows game is ready when both players have chosen" do
    allow(player_1).to receive(:chosen?).and_return true
    allow(player_2).to receive(:chosen?).and_return true
    expect(game.ready?).to eq true
  end

  before do
    allow(player_1).to receive(:choose).with "Rock"
    allow(player_2).to receive(:choose).with "Scissors"
  end

  it "restricts choices to rock, paper or scissors" do
    expect { game.acceptable_choice?(:pickle) }.to raise_error "You can only choose rock, paper or scissors."
  end

  it "can compare moves" do
    player_1.choose("Rock")
    player_2.choose("Scissors")
    expect(game.evaluate("Rock", "Scissors")).to eq("Rock")
  end

  xit "can declare a winner" do
    expect(game.result).to eq "Player 1 wins!"
  end
end
