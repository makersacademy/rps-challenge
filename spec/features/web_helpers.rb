def sign_in
  visit('/')
  fill_in('p1name', with: 'Dan')
  click_button 'Submit'
end

def web_play_rock
  visit('/')
  fill_in('p1name', with: 'Dan')
  click_button 'Submit'
  select 'Rock', from: "move"
  click_button 'Submit'
end

def web_play_paper
  visit('/')
  fill_in('p1name', with: 'Dan')
  click_button 'Submit'
  select 'Paper', from: "move"
  click_button 'Submit'
end

def web_play_scissors
  visit('/')
  fill_in('p1name', with: 'Dan')
  click_button 'Submit'
  select 'Scissors', from: "move"
  click_button 'Submit'
end

def play_again
  click_button "YEAH!"
end