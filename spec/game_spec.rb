class Game
  attr_reader :player, :computer

  def initialize(player)
    @player = player
  end
end

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) { described_class.new(player)}

  it "has a player" do
    expect(game.player).to eq player
  end

end
