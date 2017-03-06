def sign_in
  visit "/"
  fill_in :player_name, with: "John"
  click_button "Leggo!"
end

def sign_in_and_pick_rock
  visit "/"
  fill_in :player_name, with: "John"
  click_button "Leggo!"
  click_button "Rock"
end

def sign_in_and_pick_scissors
  visit "/"
  fill_in :player_name, with: "John"
  click_button "Leggo!"
  click_button "Scissors"
end
