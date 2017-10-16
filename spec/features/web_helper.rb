def sign_in_and_play
  visit '/'
  fill_in :p1, with: "Quentin"
  # fill_in :p2, with: "Lucas"
  click_button "Let's Play!"
end
