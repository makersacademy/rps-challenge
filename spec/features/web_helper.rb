def sign_in_single    
  visit '/' 
  click_button 'Single Player'
  fill_in('player1', with: 'The Obsidian Man') 
  click_button('Submit')
end

def sign_in_multi
  visit '/' 
  click_button 'Multiplayer'
  fill_in('player1', with: 'The Obsidian Man') 
  fill_in('player2', with: 'Paperboy')
  click_button('Submit')
end
