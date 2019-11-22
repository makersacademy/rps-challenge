def sign_in_and_play
  visit('/')
  fill_in "name", with: "Test Player"
  click_button "Submit"
end

def choose_rock_and_submit
  select "Rock", from: "rps_select"
  click_button "Submit"
end
