def sign_in
  visit('/')
  click_link "Single Player"
  fill_in :name, with: "Dave"
  click_button "Submit"
end