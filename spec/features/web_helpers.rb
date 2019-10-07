def sign_in_and_play
  visit '/'
  find_button('Two').click
  fill_in('name1', with: 'Caitlin')
  fill_in('name2', with: 'James')
  click_button("Let's play!")
end

def single_sign_in
  visit '/'
  find_button('One').click
  fill_in('name1', with: 'Caitlin')
  click_button("Let's play!")
end
