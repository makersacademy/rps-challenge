def sign_in_pvc
  visit('/')
  find('#PvC').click
  fill_in :player_name, with: 'Rufus'
  click_button 'Enter'
end

def sign_in_pvp
  visit('/')
  find('#PvP').click
  fill_in :player1, with: 'Tom'
  fill_in :player2, with: 'Jerry'
  click_button 'Enter'
end
