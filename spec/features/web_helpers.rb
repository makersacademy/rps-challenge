def sign_in_and_play
  visit ('/')
  fill_in('name', :with => 'Guybrush' )
  find_button('Submit').click
end
