def enter_name
  visit'/'
  player = Player.new("player")
  fill_in :name, with: player.name
  click_button("Go")
end
