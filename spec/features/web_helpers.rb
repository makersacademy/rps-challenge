def visit_root_sign_in_as_habakkuk
  visit '/'
  fill_in :name, with: 'Habakkuk'
  click_button('Submit')
end
