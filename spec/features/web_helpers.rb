def enter_name_to_play 
  visit('/')
  fill_in :player_name, with: "Ruby"
  click_button "let's play :)"
end
