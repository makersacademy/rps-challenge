def sign_in_and_play
  visit('/')
  fill_in :name, with: "Lewis"
  click_button("START")
end

def pick_rock
  sign_in_and_play
  click_button("ROCK")
end

def pick_paper
  sign_in_and_play
  click_button("PAPER")
end

def pick_scissors
  sign_in_and_play
  click_button("SCISSORS")
end
