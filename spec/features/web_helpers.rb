def solo_enter_name_and_play
  visit('/')
  click_link('Computer Game')
  fill_in :name, with: "Hermione"
  click_button("Begin")
end

def multiplayer_names_and_play
  visit('/')
  click_link('Multiplayer Game')
  fill_in :player_1, with: "Harry"
  fill_in :player_2, with: "Ron"
  click_button('Begin')
end
