def dwayne_signs_in
  visit('/')
  fill_in :player_1_name, with: "Dwayne 'The Marketeer' Johnson"
  click_button "Submit"
end
