def go_to_play_page_singleplayer
  visit('/')
  click_button('Single Player')
  fill_in('name', with: 'Partario')
  click_button('Submit')
end

def go_to_play_page_multiplayer
  visit('/')
  click_button('Two Player')
  fill_in('name1', with: 'Basil Jet')
  fill_in('name2', with: 'Hamilton Meathouse')
  click_button('Submit')
end