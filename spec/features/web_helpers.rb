def sign_in_and_play
  visit('/')
  fill_in :name, with: "Ryan"
  click_button "Submit"
end

def play_round
  click_on "rock"
  click_on "Next round"
end
