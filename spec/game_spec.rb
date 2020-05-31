require 'game'

describe Game do

  let(:player) { double :player }
  subject(:game) { described_class.new(player) }

  it "is initialized with an instance of the class player and with a variable random_move" do
    expect(game.player).to eq(player)
    expect(game.random_move).to be nil
  end
end
