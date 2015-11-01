feature '/' do
  scenario 'displays the welcome message' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock Paper Scissors'
  end
  scenario 'Allows the user to enter their name' do
    visit '/'
    fill_in :player_name, with: 'playerX'
    click_button 'Play'
    expect(page).to have_content 'Let\'s play, playerX goes first!'
  end
end
