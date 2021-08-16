def sign_in_and_play
  visit("/")
  fill_in(:name, with: "Joe")
  click_button(:Submit)
end
