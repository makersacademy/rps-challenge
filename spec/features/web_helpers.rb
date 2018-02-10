def sign_in_and_play
  visit '/'
  fill_in "name", with: 'Matt'
  click_button 'Submit'
end
