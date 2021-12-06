feature 'Results are displayed on screen' do 
  scenario 'User has beaten the Computer' do 
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    enter_name_and_submit
    click_button 'Rock'
    expect(page).to have_content 'You win! Congratulations'
  end
  scenario 'Computer has beaten the user' do 
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    enter_name_and_submit
    click_button 'Rock'
    expect(page).to have_content 'Better luck next time!'
  end
  scenario 'User and Computer Draw' do 
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    enter_name_and_submit
    click_button 'Rock'
    expect(page).to have_content 'A bore Draw!'
  end
end
