feature 'Homepage' do 
  scenario 'Should display question asking for name' do 
    visit('/')
    expect(page).to have_content('What is your name?')
  end
  scenario 'Should display play page after entering name' do 
    visit('/')
    fill_in :player_name, with: 'Ollie'
    click_button 'Submit'
    expect(page).to have_content('Hi Ollie!')
  end
  scenario 'Entering a different name should display a different message' do 
    visit('/')
    fill_in :player_name, with: 'Peter'
    click_button 'Submit'
    expect(page).to have_content('Hi Peter!')
  end
end
