require 'game'


describe Game do
  subject(:game) {described_class.new(player)}
  let(:player) {double("Powders", name: 'Ed', choice: 'Scissors')}
  it "Has a player variable" do
    expect(game).to respond_to(:player)
  end
  it "Can create an instance of itself" do
    expect(Game.start(player)).to be_an_instance_of Game
  end
  it "Has players inside the game global variable" do
    expect(Game.game.player).to be_an_instance_of Player
  end
  it "Can return the name of the player" do
    expect(game.player_name).to eq 'Ed'
  end

  it "Can return the choice of the player" do
    expect(game.player_choice).to eq 'Scissors'
  end
end
