def register_to_play
  visit('/')
  fill_in('playername', with: 'Godzilla')
  click_button('Submit')
end
