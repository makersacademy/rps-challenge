def sign_in_and_play
  visit '/'
  fill_in 'Name', with: 'Laura'
  click_on('Submit')
end

def possible_computer_weapon(page)
  page.has_content?(computer_rock) or page.has_content?(computer_paper) or page.has_content?(computer_scissors)
end
