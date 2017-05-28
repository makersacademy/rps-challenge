require 'game'

describe Game do

  let(:player) {double(:player, name: "Digby")}
  let(:opponent) {double(:opponent)}
  subject(:game) {described_class.new(:player, :opponent)}

  it "initializes with a player" do
    expect(game.player).to eq :player
  end

  it "initializes with an opponent" do
    expect(game.opponent).to eq :opponent
  end
end
