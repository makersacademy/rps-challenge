require 'game'

describe Game do
  let(:game) {Game.new("player", "computer")}
  it "responds to #player" do
    expect(game).to respond_to :player
  end

  it "responds to #computer " do
    expect(game).to respond_to :computer
  end
end
