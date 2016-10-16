def sign_in
  visit('/')
  fill_in :player_name, with: "Edward Scissorhands"
  click_button 'Let\'s do it'
end
