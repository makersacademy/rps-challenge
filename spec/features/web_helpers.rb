def enter_name_and_play
  visit('/')
  fill_in :name, with: "Hermione"
  click_button("Begin")
end 