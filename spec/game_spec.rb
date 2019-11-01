require "game"

describe Game do
  let(:game) { Game.new }
  it "returns yay when answer passsed rock" do
    expect(game.activate("rock")).to eq "yay"
  end
end
