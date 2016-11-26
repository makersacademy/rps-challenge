def sign_in
  visit "/"
  fill_in :player_name, with:  "Dan"
  click_button("Let's Do This!")
end

def sign_in_and_select_rock
  visit "/"
  fill_in :player_name, with:  "Dan"
  click_button("Let's Do This!")
  select('Rock', :from => 'take_your_pick')
  click_button("Submit")
end

def sign_in_and_select_scissors
  visit "/"
  fill_in :player_name, with:  "Dan"
  click_button("Let's Do This!")
  select('Scissors', :from => 'take_your_pick')
  click_button("Submit")
end
