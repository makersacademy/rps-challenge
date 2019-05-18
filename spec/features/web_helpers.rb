def sign_in
  visit '/'
  fill_in 'name', with: 'Laurence'
  click_button 'Submit'
end

def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Laurence'
  click_button 'Submit'
  select 'Rock', from: 'pick'
  click_button 'Submit'
end
