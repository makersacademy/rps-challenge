feature 'Results are displayed on screen' do 
  scenario 'User has beaten the Computer' do 
    enter_name_and_submit
    click_button 'Rock'
    expect(page).to have_content 'You win! Congratulations'
  end
  scenario 'Computer has beaten the user' do 
    enter_name_and_submit
    click_button 'Rock'
    expect(page).to have_content 'Better luck next time!'
  end
  scenario 'User and Computer Draw' do 
    enter_name_and_submit
    click_button 'Rock'
    expect(page).to have_content 'A bore Draw!'
  end
end