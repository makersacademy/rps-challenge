def sign_in_and_play
  visit '/details'
  fill_in :name, with: "foobar"
  click_button "Start"
end