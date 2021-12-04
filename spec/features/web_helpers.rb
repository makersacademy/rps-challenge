def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Alfonso'
  select 'Rock'
  click_button 'Play'
end