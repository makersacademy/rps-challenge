def start_single_player
  visit('/')
  choose("mode", option: "single_player")
  click_button('Continue')
  fill_in('player_1', with: 'Jake')
  click_button("Let's play!")
end

def start_multiplayer
  visit('/')
  choose("mode", option: "multiplayer")
  click_button('Continue')
  fill_in('player_1', with: 'Jake')
  fill_in('player_2', with: 'Other_Jake')
  click_button("Let's play!")
end
