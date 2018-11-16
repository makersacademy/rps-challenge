def start_the_game
  visit '/'
  fill_in :name, with: 'Dana'
  click_button "Let's Play!"
end
