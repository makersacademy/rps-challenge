def sign_in_single
  visit('/')
  fill_in('name1', with: 'Skaiste')
  click_button('Start game against computer')
end

def sign_in_multi
  visit('/')
  fill_in('name1', with: 'Skaiste')
  click_button('Add another human player')
  fill_in('name2', with: 'Seb')
  click_button('Start game')
end
