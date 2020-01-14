require_relative '../app.rb'

describe Game do
  subject(:game) { described_class.new(player_1, computer) }
  let(:player_1) { double :player }
  let(:computer) { double :player }
  it "starts with the first player" do
    expect(game.player_1).to eq player_1
  end
end
