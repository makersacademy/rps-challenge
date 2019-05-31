feature 'Homepage' do
  scenario 'the homepage has specific text' do
    visit('/')
    expect(page).to have_content('Welcome to Rock Paper Scissors')
  end
  
  scenario 'it has a form to enter your player name' do
    visit('/')
    expect(page).to have_field('Enter your name', type: 'text')
  end
  
  scenario 'there is a button to begin the game' do
    visit('/')
    expect(page).to have_button('Start the game')
  end

  scenario 'clicking button takes you to game page' do
    visit('/')
    click_button('Start the game')
    expect(page).to have_content("Choose your weapon")
  end
end
