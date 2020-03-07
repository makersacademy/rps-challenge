def sign_and_play
  visit ("/")
  fill_in "player_name", with: "Kuba"
  click_button "LET'S ROCK!"
end

def computer_choice
  [:rock, :paper, :scissors].map { |choice| "Computer chose #{choice.to_s.capitalize}!"  }
end
