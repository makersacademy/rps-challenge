require 'game'

describe Game do

let(:rock) { double(:rock, versus: "Wins") }
let(:scissors) { double(:scissors) }
let(:computer) { double(:computer, name: "Ms. Autoplay", weapon_choice: scissors) }
let(:player) { double(:player, name: "Lady Macbeth", weapon_choice: rock) }
subject(:game) { described_class.new(player, computer) }

describe "#play" do
  it "changes value of result" do
    expect{ game.play }.to change{ game.result }.from(nil).to("Wins")
  end
end

describe "#result_string" do

  it "returns string for draw" do
    allow(game).to receive(:result) { "Draw" }
    expect(game.result_string).to eq("It's a draw!")
  end
  it "returns string for win" do
    allow(game).to receive(:result) { "Wins" }
    expect(game.result_string).to eq("Lady Macbeth wins!")
  end
  it "returns string for lose" do
    allow(game).to receive(:result) { "Loses" }
    expect(game.result_string).to eq("Ms. Autoplay wins!")
  end
end
end
