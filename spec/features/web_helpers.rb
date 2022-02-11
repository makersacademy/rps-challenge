def start_game
  visit '/'
  fill_in :player_name, with: 'Peter'
  click_on 'Submit'
end
