def sign_in
  visit '/'
  fill_in :player_name, with: 'Alex'
  click_button 'Enter the Arena'
end
