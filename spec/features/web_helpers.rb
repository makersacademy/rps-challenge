def start
  visit('/')
  fill_in('player', with: 'Foo')
  click_button('Start')
end
