def registers_a_name
  visit('/')
  fill_in('name', with: 'Boris')
  click_button('Obey')
end
