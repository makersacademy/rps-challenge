def sign_in
  visit '/'
  fill_in 'name1', with: 'Laurence'
  fill_in 'name2', with: 'Bob'
  click_button 'Submit'
end

def sign_in_and_play
  visit '/'
  fill_in 'name1', with: 'Laurence'
  fill_in 'name2', with: 'Bob'
  click_button 'Submit'
  select 'Rock', from: 'pick1'
end

def submit_rock
  select 'Rock', from: 'pick2'
  click_button 'Submit'
end

def submit_scissors
  select 'Scissors', from: 'pick2'
  click_button 'Submit'
end

def submit_paper
  select 'Paper', from: 'pick2'
  click_button 'Submit'
end
