def enter_name
  visit '/'
  fill_in :name, with: 'Symion'
  click_button('Submit!')
end
