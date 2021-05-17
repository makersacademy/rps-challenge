def sign_in
  visit('/')
  fill_in "player_name", with: "John"
  click_button "Submit"
end

def choose_rock
  sign_in
  choose "Rock"
  click_button "Submit"
end

def choose_paper
  sign_in
  choose "Paper"
  click_button "Submit"
end

def choose_scissors
  sign_in
  choose "Scissors"
  click_button "Submit"
end