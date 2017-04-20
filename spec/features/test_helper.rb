def sign_in_and_play
  visit "/"

  fill_in "name", :with => "Dagmara"
  click_button "Game on!"
end
