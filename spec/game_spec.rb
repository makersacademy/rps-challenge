require 'game'
require 'player'
describe Game do

  it 'can add a player' do
    game = Game.new
    expect(game.add_player("Rizwan")).to eq("Rizwan")
  end

  it 'can check if the match is a tie' do
    game = Game.new
    player_choice = "rock"
    computer_choice = "rock"
    expect(game.winner(player_choice, computer_choice)).to eq("It's a tie!")

  end

  it 'can tell if the player is a winner' do
    game = Game.new
    player = Player.new 'Rizwan'
    player_choice = player.choice("paper")
    computer_choice = "rock"
    expect(game.winner(player_choice, computer_choice)).to eq("YOU WIN!")
  end

  it 'can tell if the computer is a winner' do
    game = Game.new
    player = Player.new 'Rizwan'
    player_choice = player.choice("scissors")
    computer_choice = "rock"
    expect(game.winner(player_choice, computer_choice)).to eq("COMPUTER WIN!")
  end

end