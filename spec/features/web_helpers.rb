def enter_name_and_submit
  visit('/') 
    fill_in('name', with: 'Dave')
    click_button("Let's play!")
end


def enter_name_and_submit_again
  visit('/') 
    fill_in('name', with: 'Dave')
    click_button("Let's play!")
    click_button("let's do this!")
end