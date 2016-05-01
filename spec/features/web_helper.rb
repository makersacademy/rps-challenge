def sign_in
  visit '/'
  click_button "Start"
  fill_in :player_name, with: "Johnson"
  click_button "Submit"
end

def sign_in_and_choose_rock
  visit '/'
  click_button "Start"
  fill_in :player_name, with: "Johnson"
  click_button "Submit"
  click_button "rock"
end
