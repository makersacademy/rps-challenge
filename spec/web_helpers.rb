def sign_in_and_play
  visit("/")
  fill_in("name", with: "BIMINI BON BOULASH")
  click_button "Play!"
end

def win_game
  10.times do
    srand(4)
    click_button "Rock"
  end
end

def lose_game
  10.times do
    srand(4)
    click_button "Paper"
  end
end

def draw_game
  10.times do
    srand(4)
    click_button "Scissors"
  end
end
