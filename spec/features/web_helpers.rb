def singleplayer
  visit("/")
  click_button "Single Player"
  fill_in :name, with: "Javi"
  click_button "Play"
end

def multiplayer
  visit("/")
  click_button "Multiplayer"
  fill_in :name_1, with: "Javi"
  fill_in :name_2, with: "Lopez"
  click_button "Play"
end

def tied_multiplayer
  visit("/")
  click_button "Multiplayer"
  fill_in :name_1, with: "Javi"
  fill_in :name_2, with: "Lopez"
  click_button "Play"
  click_button "SCISSORS"
  click_button "SCISSORS"
end

def p1_multiplayer
  visit("/")
  click_button "Multiplayer"
  fill_in :name_1, with: "Javi"
  fill_in :name_2, with: "Lopez"
  click_button "Play"
  click_button "SCISSORS"
  click_button "PAPER"
end

def p2_multiplayer
  visit("/")
  click_button "Multiplayer"
  fill_in :name_1, with: "Javi"
  fill_in :name_2, with: "Lopez"
  click_button "Play"
  click_button "SCISSORS"
  click_button "ROCK"
end
