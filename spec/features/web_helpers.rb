def crush_it
  visit '/'
  fill_in('player1', :with => 'Shane')
  click_button('Continue')
end
