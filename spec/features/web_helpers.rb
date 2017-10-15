def one_player_version
  visit '/'
  click_button "Computer"
  fill_in :name, with: 'David'
  click_button 'Submit'
end
