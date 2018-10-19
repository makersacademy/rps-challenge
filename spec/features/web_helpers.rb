def sign_in_and_play
  visit '/'
  fill_in('p1_name', with: 'Balboa')
  # fill_in('p2_name', with: 'Edward')
  click_button('Submit')
end
