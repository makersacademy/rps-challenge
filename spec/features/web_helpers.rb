def name_and_play
  visit '/'
  fill_in :player1, with: "George"
  click_button "Start Game"
end
