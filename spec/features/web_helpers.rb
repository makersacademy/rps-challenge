def fill_in_and_submit
  visit('/')
  click_on 'One player'
  fill_in :player, with: 'Freddy'
  click_button('Submit')
end

def fill_in_and_submit_2p
  visit('/')
  click_on 'Two player'
  fill_in :player_1, with: 'Freddy'
  fill_in :player_2, with: 'Lucy'
  click_button('Submit')
end
