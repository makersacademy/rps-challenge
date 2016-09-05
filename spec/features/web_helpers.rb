def sign_in_and_play
  visit "/"
  fill_in('user_name', with: "Alfie")
  click_button "Save name"
end
