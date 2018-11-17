def start_the_game
  visit '/'
  fill_in :p1_name, with: 'Dana'
  fill_in :p2_name, with: 'Matt'
  click_button "Let's Play!"
end
