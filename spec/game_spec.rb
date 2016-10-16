require 'game'


describe Game do
  subject(:game) {described_class.new(player)}
  let(:player) {double("Powders", name: 'Ed', choice: 'scissors')}
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
    expect(game.player_choice).to eq 'scissors'
  end

  it "Can generate a result for the computer" do
    allow(game).to receive_messages(computer_choice: 'rock')
    expect(game.computer_choice).to eq 'rock'
  end

  it "Can determine an outcome for the game" do
    allow(game).to receive_messages(computer_choice: 'rock')
    game.set_winner
    expect(game.winner).to eq 'Computer'
  end
end
