def set_up

  visit('/')
  fill_in :name, with: "Luke"
  click_button "Click to Register"

end
