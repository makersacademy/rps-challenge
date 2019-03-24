def add_suzy
  p 'cccccccccccc'
  visit('/')
  p 'dddddddddddd'
  fill_in 'p1name', with: 'Suzy'
  p 'eeeeeeee'
  click_button 'Submit'
  p 'ffffffffff'
end
