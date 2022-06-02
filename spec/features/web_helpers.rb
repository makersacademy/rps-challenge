def sign_in_and_play
  visit ("/")
  fill_in "name", with: "Annabelle"
  click_on "Submit"
end
