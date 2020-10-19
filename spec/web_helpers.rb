def add_name
  visit('/')
  fill_in("name_input", with: "Ben")
  click_button("name_submit")
end

def play_logic(game, num, choice)
  srand(num)
  game.calculate_winner(choice)
end
