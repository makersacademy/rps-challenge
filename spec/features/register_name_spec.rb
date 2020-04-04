feature 'players can register their names before playing an online game' do
  scenario 'player one can enter their name' do
    visit '/'
    expect(page).to have_field('player1_name')
  end

  scenario 'player two can enter their name' do
    visit '/'
    expect(page).to have_field('player2_name')
  end

  scenario 'players name is shown on page when it has been registered' do
    visit '/'
    fill_in 'player1_name', with: 'Phil'
    click_button 'Register'
    expect(page).to have_content('Welcome to the game Phil!')
  end
end
