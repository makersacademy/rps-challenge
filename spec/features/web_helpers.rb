def sign_in 
  visit('/')
  fill_in :player_name, with: 'Ben'
end