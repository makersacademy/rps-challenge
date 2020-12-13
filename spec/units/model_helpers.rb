def play_game
  game.new_player(name)
  game.add_player_choice(rps)
  game.new_computer_player
  allow(game).to receive(:random_computer_choice).and_return(computer_choice)
  game.add_computer_choice
end
