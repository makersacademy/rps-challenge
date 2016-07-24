def sign_in_and_play
  visit '/'
  fill_in "player_1_name", with: "Jonny"
  fill_in "player_2_name", with: "Santa Claus"
  click_button "Let's do this!"
end

def sign_in_and_choose_paper
  sign_in_and_play
  click_button "I was born ready"
  choose("paper")
  click_button "Feeling pretty good about myself right now"
end

# Have another helper once we implement the 3 options for RPS.
