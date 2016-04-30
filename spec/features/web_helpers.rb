def sign_in_with_name
  visit('/')
  fill_in :player_name, with: 'Emma'
  click_button 'Game on!'
end
