feature 'Registration' do
  
  scenario 'requests name from user' do
    visit('/')
    expect(page).to have_content('Please enter your name')
  end

  scenario 'welcomes the player' do
    visit ('/')
    fill_in :player_name, with: 'Paul'
    click_button 'Submit'
    expect(page).to have_content('Welcome Paul!')
  end

end