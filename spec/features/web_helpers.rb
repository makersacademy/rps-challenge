def sign_in_and_play
  visit('/')
  fill_in :name, with: "Sophie"
  click_button "Submit"
end
