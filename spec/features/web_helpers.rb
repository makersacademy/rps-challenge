def log_in
  visit "/"
  choose 'cpu'
  fill_in 'player_1_name', with: "Billy"
end

def log_in_and_choose
  log_in
  choose('Scissors')
  click_button("FIGHT")
end
