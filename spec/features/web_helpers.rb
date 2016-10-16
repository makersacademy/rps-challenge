def sign_in_and_play
  visit ('/')
  fill_in :name, with: "jini"
  click_button "BEGIN!"
end
