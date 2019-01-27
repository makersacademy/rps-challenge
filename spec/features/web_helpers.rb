def enter_name_and_play
  visit ('/')
  fill_in('Player', with: 'Test Name')
  click_button('Let\'s play')
end
