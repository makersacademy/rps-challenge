def sign_in
  visit('/')
  fill_in('p1name', with: 'Dan')
  click_button 'Submit'
end

def play_rock
  visit('/')
  fill_in('p1name', with: 'Dan')
  click_button 'Submit'
  select 'Rock', from: "move"
  click_button 'Submit'
end