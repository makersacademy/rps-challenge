def insert_user_name
  visit('/')

  fill_in "player", :with => "Player1"
  # fill_in "player2", :with => "Player2"
  click_button "submit"
end