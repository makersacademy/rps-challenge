def enter_name_and_play
  visit('/')
  fill_in :player_name, with: 'Ash'
  click_on 'Submit'
end