def sign_in_and_play
  visit '/'
  fill_in "player1_name", :with => "Nata"
  click_on 'Player Name'
end
