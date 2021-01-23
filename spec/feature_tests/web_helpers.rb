def sign_in
  visit '/'
  fill_in :player_1_name, with: 'Holly'
  click_button ('Submit')
end
