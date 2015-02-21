require 'game'

describe Game do

  let(:game) {Game.new}

  it "can have two players added" do
    computer = Computer.new
    player = Player.new
    game.add_player(computer)
    game.add_player(player)
    expect(game.players).to eq [computer, player]
  end

  it "declares the player as the winner when the player chooses rock and the computer chooses scissors" do
    computer = Computer.new
    player = Player.new
    game.add_player(computer)
    game.add_player(player)
    player.weapon = :Rock
    computer.weapon = :Scissors
    expect(game.winner).to eq player
  end

  it "declares the player as the loser when the player chooses rock and the computer chooses paper" do
    computer = Computer.new
    player = Player.new
    game.add_player(computer)
    game.add_player(player)
    player.weapon = :Rock
    computer.weapon = :Paper
    expect(game.winner).to eq computer
  end
end