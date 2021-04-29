FIRST_TO = 10

def sign_in_and_play
  visit("/")
  fill_in("name", with: "BIMINI BON BOULASH")
  click_button "Play!"
end

def win_game
  FIRST_TO.times do
    srand(4)
    click_button "Rock"
  end
end

def lose_game
  FIRST_TO.times do
    srand(4)
    click_button "Paper"
  end
end
