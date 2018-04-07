def sign_in_and_play
  visit ("/")
  fill_in :name, with: "Miriam Bancroft"
  click_button "Enter name"
end

def rock
  click_button('ROCK')
end

def paper
  click_button('PAPER')
end

def scissors
  click_button('SCISSORS')
end

def continue
  click_button('Continue')
end
