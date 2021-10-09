def enter_name_and_submit
  visit('/')
  fill_in :player_1_name, with: 'Alex'
  click_button 'Submit'
end

def select_rock
  choose :rock
  click_button 'Go'
end

def select_paper
  choose :paper
  click_button 'Go'
end

def select_scissors
  choose :scissors
  click_button 'Go'
end
