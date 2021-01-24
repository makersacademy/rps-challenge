feature 'Turn' do 
  scenario 'Should display scissors when picked' do 
    visit('/')
    fill_in :player_name, with: 'Ollie'
    click_button 'Submit'
    choose(option: 'scissors')
    click_button 'Submit'
    expect(page).to have_content('You chose scissors')
  end
  scenario 'Should display rock when picked' do 
    visit('/')
    fill_in :player_name, with: 'Ollie'
    click_button 'Submit'
    choose(option: 'rock')
    click_button 'Submit'
    expect(page).to have_content('You chose rock')
  end
end
