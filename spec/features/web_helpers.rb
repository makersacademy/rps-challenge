def sign_in_and_play
  visit '/'
  fill_in "Name", with: "Arunas"
  click_button "Play"
end
