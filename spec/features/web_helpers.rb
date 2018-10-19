def register_for_singleplayer
  visit('/')
  click_button 'Single player'
  fill_in :name, with: 'Clare'
  click_button 'Play'
end

def register_for_multiplayer
  visit('/')
  click_button 'Multiplayer'
  fill_in :name, with: 'Clare'
  fill_in :name2, with: 'Laura'
  click_button 'Play'
end
