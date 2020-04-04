feature 'player can register their name before playing an online game' do
  scenario 'player can enter their name' do
    visit '/'
    expect(page).to have_field('name')
  end

  scenario 'players name is shown on page when it has been registered' do
    visit '/'
    fill_in 'name', with: 'Phil'
    click_button 'Register'
    expect(page).to have_content('Welcome to the game Phil!')
  end
end
