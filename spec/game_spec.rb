require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }
  let(:result_options) { [true, false, nil] }

  it "initializes the player" do
    expect(game.player).to eq player
  end

  it "calculates the result if the rock was picked" do
    50.times { game.rock }
    expect(result_options).to include game.result
  end

  it "calculates the result if the paper was picked" do
    50.times { game.paper }
    expect(result_options).to include game.result
  end

  it "calculates the result if the scissors were picked" do
    50.times { game.scissors }
    expect(result_options).to include game.result
  end
end
