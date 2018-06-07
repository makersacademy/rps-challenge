def sign_in_and_play
  visit '/'
  fill_in "name", with: "jenny"
  click_button "Subscribe"
end
