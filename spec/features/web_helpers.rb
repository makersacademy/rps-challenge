def log_in
  visit "/"
  fill_in('player_one_name', with: "Billy")
  click_button("Go!")
end
