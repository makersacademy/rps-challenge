def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'kenny'
  click_button "Submit"
end

def select_rock_and_submit
  select 'rock', from: 'choice'
  click_button "Submit" 
end

def select_paper_and_submit
  select 'paper', from: 'choice'
  click_button "Submit" 
end

def select_scissors_and_submit
  select 'scissors', from: 'choice'
  click_button "Submit" 
end
