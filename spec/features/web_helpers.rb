def input_name_and_play
  visit('/')
  fill_in :player_1_name, with:("Goku")
  click_button("Submit")

end