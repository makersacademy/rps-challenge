def sign_in_and_play
  visit('/')

  fill_in :player_name, with: "Rachel"
  click_button "Submit"
end
