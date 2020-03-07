def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: 'Lord Looney'
  fill_in :player_2_name, with: 'Count Catula'
  click_button('Submit')
end
