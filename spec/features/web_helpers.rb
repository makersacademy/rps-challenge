def sign_in_and_play
  visit '/'
  fill_in "player_name", :with => "George"
  click_button("Save")
end
