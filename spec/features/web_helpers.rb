def submit_name_and_play
  visit('/')
  fill_in(:player, with: 'Ren')
  click_button('Submit')
end
