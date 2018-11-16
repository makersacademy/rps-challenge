def sign_in_and_play
  visit "/"
  fill_in "charname", with: "Henry"
  click_button "Begin the RAMPAGE"
end
