def register_player(player_name:)
  visit('/')

  fill_in("name_input", with: player_name)

  click_button("start_game")
end
