def sign_in
  visit "/"
fill_in :player_name, with:  "Dan"
click_button("Let's Do This!")
end
