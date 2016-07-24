def sign_in_and_play
  visit ('/')
  fill_in "player_1", :with => "Dan"
  click_button "Submit name"
end
