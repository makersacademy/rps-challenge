def setup_singleplayer
  visit '/'
  fill_in('name', with: 'Adrian')
  click_button('Submit')
  click_button('Single Player Mode')
end
