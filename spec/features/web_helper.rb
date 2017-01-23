def register_process
  visit('/')
  fill_in("player_one_name", with: "Player")
  click_button("Start!")
end
