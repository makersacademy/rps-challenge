def enter_name_and_play
  visit('/')
  fill_in :player, with: 'Ash'
  click_on 'Submit'
end
