def start_single_player
  visit('/')
  # fill_in :player_name, with: 'Dave'
  p find(:xpath, "//form[@id='single_player_game']/input[@name='player_name']").set("Dave")
  find(:xpath, "//button[@name='start_single_player_game']").click
end
