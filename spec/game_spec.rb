require 'game'

describe Game do

  let(:game) {Game.new}
  let(:computer) {double :computer}
  let(:player) {double :player, weapon: :Rock}

  it "can have two players added" do
    game.add_player(computer)
    game.add_player(player)
    expect(game.players).to eq [computer, player]
  end

  it "declares the player as the winner when the player chooses rock and the computer chooses scissors" do
    game.add_player(computer)
    game.add_player(player)
    allow(computer).to receive(:weapon).and_return(:Scissors)
    expect(game.winner).to eq player
  end

  it "declares the player as the loser when the player chooses rock and the computer chooses paper" do
    game.add_player(computer)
    game.add_player(player)
    allow(computer).to receive(:weapon).and_return(:Paper)
    expect(game.winner).to eq computer
  end

  it "declares the game to be a draw when the player chooses rock and the computer chooses rock" do
    game.add_player(computer)
    game.add_player(player)
    allow(computer).to receive(:weapon).and_return(:Rock)
    expect(game.winner).to eq nil
  end

end