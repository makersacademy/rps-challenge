feature 'Entering player names' do

  scenario 'player name is entered and saved' do
    visit('/')
    fill_in('name', with: 'Jake')
    click_on('Submit!')
    
    expect(page).to have_content('Welcome Jake')
  end
end
