def sign_in_as_hannah
  visit '/'
  fill_in :name, with: 'Hannah'
  click_button('Play')
end
