def enter_names_and_play
  visit('/')
  fill_in :name1, :with => "Player_1"
  fill_in :name2, :with => "Player_2"
  click_button "Start game"
end
