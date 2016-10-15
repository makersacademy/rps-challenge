class Game
  attr_reader :player, :player_selection

  def initialize(player)
    @player = player
  end

  def rock
    @player_selection = :rock
  end

  def paper
    @player_selection = :paper
  end

  def scissors
    @player_selection = :scissors
  end
end

describe Game do
  let(:player) { double :player }
  subject(:game) { described_class.new(player)}

  it "has a player" do
    expect(game.player).to eq player
  end

  it "allows player to choose rock" do
    game.rock
    expect(game.player_selection).to eq :rock
  end
  it "allows player to choose paper" do
    game.paper
    expect(game.player_selection).to eq :paper
  end
  it "allows player to choose scissors" do
    game.scissors
    expect(game.player_selection).to eq :scissors
  end


end
