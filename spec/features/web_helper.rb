def sign_in
  visit "/"
  fill_in :player_name, with:  "Dan"
  click_button("Let's Do This!")
end

def sign_in_and_select_rock
  visit "/"
  fill_in :player_name, with:  "Dan"
  click_button("Let's Do This!")
  click_button("Rock")
end

def sign_in_and_select_scissors
  visit "/"
  fill_in :player_name, with:  "Dan"
  click_button("Let's Do This!")
  click_button("Scissors")
end
