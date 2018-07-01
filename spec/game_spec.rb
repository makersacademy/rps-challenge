require 'game'

describe Game do

  subject(:game_class) { Game }
  subject(:game) {described_class.new(player, opponent) }
  let(:player) { double "The player", name: "Yvonne"}
  let(:opponent) { double "The opponent" }


describe "#initialize" do
  it "Instantiates game with a player" do
    expect(game.player).to eq player
  end

  it "Instantiates game with an opponent" do
    expect(game.opponent).to eq opponent
  end
end

describe "self#instance" do
  it "Stores an instance of Game in a class instance variable" do
    expect(game).to be_an_instance_of game_class
    end
  end

describe "#winner" do
  context "The player wins" do
    it "Declares player as winner if player chooses rock and opponent chooses scissors" do
      allow(player).to receive(:option).and_return("Rock")
      allow(opponent).to receive(:opponent_option).and_return("Scissors")
      expect(game.winner).to eq "Yvonne wins"
  end

  it "Declares player as winner if player chooses scissors and opponent chooses paper" do
    allow(player).to receive(:option).and_return("Scissors")
    allow(opponent).to receive(:opponent_option).and_return("Paper")
    expect(game.winner).to eq "Yvonne wins"
  end
end

context "The player loses" do
  it "Declares opponent as winner if player chooses scissors and opponent chooses rock" do
    allow(player).to receive(:option).and_return("Scissors")
    allow(opponent).to receive(:opponent_option).and_return("Rock")
    expect(game.winner).to eq "Opponent wins"
end

it "Declares opponent as winner if player chooses paper and opponent chooses scissors" do
  allow(player).to receive(:option).and_return("Paper")
  allow(opponent).to receive(:opponent_option).and_return("Scissors")
  expect(game.winner).to eq "Opponent wins"
end

it "Declares opponent as winner if player chooses rock and opponent chooses paper" do
  allow(player).to receive(:option).and_return("Rock")
  allow(opponent).to receive(:opponent_option).and_return("Paper")
  expect(game.winner).to eq "Opponent wins"
  end
end

context "There is a draw" do
  it "Declares a draw if both player and opponent choose scissors" do
    allow(player).to receive(:option).and_return("Paper")
    allow(opponent).to receive(:opponent_option).and_return("Paper")
    expect(game.winner).to eq "It's a draw"
    end

    it "Declares a draw if both player and opponent choose rock" do
      allow(player).to receive(:option).and_return("Rock")
      allow(opponent).to receive(:opponent_option).and_return("Rock")
      expect(game.winner).to eq "It's a draw"
      end
    end
  end
end
