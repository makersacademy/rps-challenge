def sign_in_pvc
  visit('/')
  find('#PvC').click
  fill_in :player_name, with: 'Rufus'
  click_button 'Enter'
end
