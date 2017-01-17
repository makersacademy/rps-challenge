require 'game'

describe Game do

  let(:player_one) { double :player_one, name: "David Miller", select_weapon: "Rock", weapon: "Rock"}
  let(:player_two) { double :player_two, name: "Computer", select_weapon: "Paper", weapon: "Paper"}
  subject(:game) { described_class.new(player_one, player_two) }

  it "can create an instance of itself" do
    expect(Game.create(player_one, player_two)).to be_an_instance_of(Game)
  end

  it "can calls itself as an instance" do
    expect(Game.instance).to be_an_instance_of(Game)
  end

  it "initializes a game with two player" do
    expect(game.player_one).to eq player_one
    expect(game.player_two).to eq player_two
  end

  it "can check winner for each round" do
    player_one.select_weapon("Rock")
    player_two.select_weapon("Paper")
    expect(game.round_winner).to eq player_two
  end

  it "assigns winner to whoever reaches 3 points first" do
    allow(player_one).to receive(:score).and_return 3
    allow(player_two).to receive(:score).and_return 1
    game.check_winner
    expect(game.winner).to be player_one
  end

end
