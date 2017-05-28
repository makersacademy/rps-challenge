def sign_in_and_play    
  visit('/')
  fill_in('player', with: 'The Obsidian Man') 
  click_button('Submit')
end
