def name_and_play
  visit('/')
  fill_in :playerName, with: "Andy"
  click_button 'Submit'
end

def choose_rock
  name_and_play
  select 'Rock', from: 'weapon'
  click_button 'Submit'
end

def choose_paper
  name_and_play
  select 'Paper', from: 'weapon'
  click_button 'Submit'
end

def choose_scissors
  name_and_play
  select 'Scissors', from: 'weapon'
  click_button 'Submit'
end
