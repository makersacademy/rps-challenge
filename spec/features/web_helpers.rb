def sign_in

  visit('/')
  click_button('One Player')
  fill_in("player_one", with: "Claude")
  click_on("Submit")

end

def choose_rock
  sign_in
  click_on("rock")
end

def choose_paper
  sign_in
  click_on("paper")
end

def choose_scissors
  sign_in
  click_on("scissors")
end
