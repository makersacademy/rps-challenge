def dwayne_signs_in
  visit('/')
  fill_in :name, with: "Dwayne 'The Marketeer' Johnson"
  click_button "Submit"
end
